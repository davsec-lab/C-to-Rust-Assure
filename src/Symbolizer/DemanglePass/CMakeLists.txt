cmake_minimum_required(VERSION 3.15)
project(DemanglePass LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_BUILD_TYPE Debug)
if(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++ -fno-omit-frame-pointer")
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin") 
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++ -fno-omit-frame-pointer")
endif()
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

find_package(LLVM REQUIRED CONFIG)

message(STATUS "LLVM Version: ${LLVM_PACKAGE_VERSION}")
message(STATUS "LLVM Include Dirs: ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM Libraries: ${LLVM_LIBRARIES}")

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_library(DemanglePass MODULE DemanglePass.cpp)

if(NOT ${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
	target_link_libraries(DemanglePass
			LLVMSupport
			LLVMIRReader
			LLVMTransformUtils
			LLVMAnalysis
			LLVMOption
			LLVMDemangle
			LLVMCore
			C++
	)
endif()

set_target_properties(DemanglePass PROPERTIES PREFIX "")

