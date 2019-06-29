#ifndef FFT_H
#define FFT_H

#include "complex.h"


void fft(Complex* x,unsigned int N);
void ifft(Complex* x,unsigned int N);
int FFTmain(void);

#endif // FFT_H
