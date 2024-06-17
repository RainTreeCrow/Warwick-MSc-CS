#ifndef _BASIC_IO_H
#define _BASIC_IO_H

#include <stdio.h>
#include <stdbool.h>

void BASIC_IO__INITIALISATION(void);
void BASIC_IO__INTERVAL_READ(int, int, int*);
void BASIC_IO__INT_WRITE(int);
void BASIC_IO__BOOL_READ(bool*);
void BASIC_IO__BOOL_WRITE(bool);
void BASIC_IO__CHAR_READ(int*);
void BASIC_IO__CHAR_WRITE(int);
void BASIC_IO__STRING_WRITE(char*);

#endif /* _BASIC_IO_H */
