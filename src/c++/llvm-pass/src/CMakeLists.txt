llvm_map_components_to_libnames(llvm_libs bitwriter core ipo irreader instcombine instrumentation target linker analysis scalaropts support )
file (GLOB SOURCES
   *.cpp
)
add_executable(rustifier ${SOURCES})

target_link_libraries(rustifier ${SVF_LIB} ${LLVMCudd} ${llvm_libs})

add_llvm_library(rustifier-lib SHARED ${SOURCES} ${SVF_LIB} LINK_LIBS)

set_target_properties(rustifier PROPERTIES
                       RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )
