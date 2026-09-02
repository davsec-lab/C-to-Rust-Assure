find_package(LLVM REQUIRED CONFIG)

separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS_LIST})
include_directories(${LLVM_INCLUDE_DIRS})


set(CMAKE_CXX_FLAGS "-O0 -ggdb")
set(CMAKE_C_FLAGS "-O0 -ggdb")

#Debug Flag
# set(CMAKE_BUILD_TYPE Debug)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

SET(CMAKE_CXX_FLAGS "-Wall -fno-rtti")

add_subdirectory(Pass)
add_subdirectory(DemanglePass)
# add_subdirectory(LoopInfoPass)