project(question3)

cmake_minimum_required(VERSION 2.4)

SET(question3_SOURCES
    BASIC_IO.c
    Numbers_i.c
    Top_i.c
    b_main.c
)
SET(question3_HEADERS
    BASIC_IO.h
    Numbers.h
    Top.h
)
add_executable(question3 ${question3_SOURCES} ${question3_HEADERS})
