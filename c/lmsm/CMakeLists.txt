set(CMAKE_CXX_STANDARD 11)
cmake_minimum_required(VERSION 3.16)
project(lmsm_tests)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)

add_executable(lmsm src/main.c src/lmsm.c src/lmsm.h src/assembler.c src/assembler.h src/repl.c src/repl.h)

add_library(lmsm_lib src/main.c src/lmsm.c src/lmsm.h src/assembler.c src/assembler.h src/repl.c src/repl.h)

add_subdirectory(googletest)
