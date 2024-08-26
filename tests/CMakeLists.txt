configure_file(CMakeLists.txt.in googletest-download/CMakeLists.txt)
execute_process(COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )
execute_process(COMMAND ${CMAKE_COMMAND} --build .
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/googletest-download )

# Prevent GoogleTest from overriding our compiler/linker options
# when building with Visual Studio
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

# Add googletest directly to our build. This defines
# the gtest and gtest_main targets.
add_subdirectory(${CMAKE_BINARY_DIR}/googletest-src
                 ${CMAKE_BINARY_DIR}/googletest-build
                 EXCLUDE_FROM_ALL)

# Now simply link against gtest or gtest_main as needed. Eg
add_executable(test_hello test_hello.cpp)
target_link_libraries(test_hello gtest_main)

# Include the main project source directory
target_include_directories(test_hello PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../src)

add_test(NAME test_hello COMMAND test_hello)