# Download and unpack GoogleTest at configure time
include(FetchContent)

FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/release-1.11.0.zip
)

# Fetch and add googletest
FetchContent_MakeAvailable(googletest)

# Now simply link against gtest or gtest_main as needed. Eg
add_executable(test_hello test_hello.cpp)
target_link_libraries(test_hello gtest_main hello_lib)

# Include the main project source directory
target_include_directories(test_hello PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../src)

# Register the test with CTest
add_test(NAME test_hello COMMAND test_hello)