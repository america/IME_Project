cmake_minimum_required(VERSION 3.13)

project(test_cmake CXX)

add_executable(SpeedyInput src/main.cpp src/hello.cpp)

target_include_directories(SpeedyInput PRIVATE ./include)
