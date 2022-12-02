set(CMAKE_CXX_STANDARD 11)
cmake_minimum_required(VERSION 3.16)
project(Google_tests)

# 'lib' is the folder with Google Test sources
add_subdirectory(lib)
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR} ../src)

# 'Google_Tests_run' is the target name
add_executable(lmsm_emulator_tests lmsm.cpp)
target_link_libraries(lmsm_emulator_tests gtest gtest_main lmsm_lib)

# 'Google_Tests_run' is the target name
add_executable(lmsm_tests assembler.cpp lmsm.cpp)
target_link_libraries(lmsm_tests gtest gtest_main lmsm_lib)
