# Specify the test source files
set(TEST_SOURCES
  SimpleCalculator_test.cpp
)

set(CMAKE_CXX_FLAGS "--coverage")

# Create the test executable
add_executable(runTests ${TEST_SOURCES})

# Add the sources to the executable
target_sources(runTests PRIVATE ../src/SimpleCalculator.cpp) 

# Find Gtest package
find_package(GTest REQUIRED)

# Link the test executable with GTest and pthread libraries
target_link_libraries(runTests GTest::GTest GTest::Main pthread)
