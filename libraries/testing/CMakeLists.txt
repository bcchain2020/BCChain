file(GLOB HEADERS "include/bcio/testing/*.hpp")

## SORT .cpp by most likely to change / break compile
add_library( bcio_testing
             tester.cpp
             tester_network.cpp
             ${HEADERS}
        )

target_link_libraries( bcio_testing bcio_chain bc_utilities fc chainbase Logging IR WAST WASM Runtime )
target_include_directories( bcio_testing
                            PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include" "${CMAKE_CURRENT_BINARY_DIR}/include"
                                   "${CMAKE_CURRENT_SOURCE_DIR}/../wasm-jit/Include"
                                   "${CMAKE_BINARY_DIR}/contracts"
                            )

add_dependencies( bcio_testing bcio.bios )

if(MSVC)
  set_source_files_properties( db_init.cpp db_block.cpp database.cpp block_log.cpp PROPERTIES COMPILE_FLAGS "/bigobj" )
endif(MSVC)

set_target_properties( bcio_testing PROPERTIES PUBLIC_HEADER "${HEADERS}" )
install( TARGETS bcio_testing
   RUNTIME DESTINATION ${CMAKE_INSTALL_FULL_BINDIR}
   LIBRARY DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR}
   ARCHIVE DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR}
   PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_FULL_INCLUDEDIR}/bcio/testing
)
install_directory_permissions( DIRECTORY ${CMAKE_INSTALL_FULL_INCLUDEDIR}/bcio/testing )

