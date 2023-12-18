# Specify the minimum version for CMake
cmake_minimum_required(VERSION 3.10)

# Project's name and the version of C++ used
project(IME_Project VERSION 1.0 LANGUAGES CXX)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)

# Find Google Test
find_package(GTest REQUIRED)

# Include the GTest header files to the include path
include_directories(${GTEST_INCLUDE_DIRS})

# Include your own header files
include_directories(include)

# Add the source files you want to compile
set(SOURCES
    src/SimpleCalculator.cpp
    src/main.cpp
)

# Add the test directory
add_subdirectory(test)

# Create the executable from the source files
add_executable(SpeedInput ${SOURCES})

# Link the GTest and pthread libraries
target_link_libraries(SpeedInput ${GTEST_LIBRARIES} pthread)
