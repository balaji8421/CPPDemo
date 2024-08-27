cmake_minimum_required(VERSION 3.11)

# Project name and version
project(HelloWorld VERSION 1.0)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Enable code coverage if CMAKE_BUILD_TYPE is set to 'Coverage'
if(CMAKE_BUILD_TYPE MATCHES Coverage)
    message(STATUS "Code Coverage enabled")
    # Set the compiler flags for coverage
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --coverage")
endif()

# Add source files for the main application as library
add_library(hello_lib src/hello.cpp )

# Add source files
add_executable(hello_world src/main.cpp)

# Link executable with libraries
target_link_libraries(hello_world PRIVATE hello_lib)

# Include directories
target_include_directories(hello_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src)

# Add the tests
enable_testing()
add_subdirectory(tests)

# Define a custom target for running tests
add_custom_target(run_tests
    COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure
   DEPENDS test_hello)