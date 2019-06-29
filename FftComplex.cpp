// Calcule FFT et iFFT

#include "FftComplex.hpp"
#include <iostream>


// Cooley-Tukey FFT (in-place, breadth-first, decimation-in-frequency)

void fft(Complex* x,unsigned int N) {
         unsigned int NN = sizeof(x);    // initialise mal ?
        unsigned int  k = N, n;
        long double thetaT = M_PIl /(long double) N;
        Complex phiT = Complex(cosl(thetaT), -sinl(thetaT)), T;
        Complex t;
        while (k > 1) {
                n = k;
                k >>= 1;
                phiT = phiT * phiT;
                T = Complex(1.0, 0.0);
                for (unsigned int l = 0; l < k; l++) {
                        for (unsigned int a = l; a < N; a += n) {
                                unsigned int b = a + k;
                                t = x[a] - x[b];
                                x[a] += x[b];
                                x[b] = t * T;
                        }
                        T *= phiT;
                }
        }
        // Decimate
        unsigned int m = (unsigned int)log2(N);
        for (unsigned int a = 0; a < N; a++) {
                unsigned  int b = a;
                // Reverse bits
                b = (((b & 0xaaaaaaaa) >> 1) | ((b & 0x55555555) << 1));
                b = (((b & 0xcccccccc) >> 2) | ((b & 0x33333333) << 2));
                b = (((b & 0xf0f0f0f0) >> 4) | ((b & 0x0f0f0f0f) << 4));
                b = (((b & 0xff00ff00) >> 8) | ((b & 0x00ff00ff) << 8));
                b = ((b >> 16) | (b << 16)) >> (32 - m);
                if (b > a) {
                        t = x[a];
                        x[a] = x[b];
                        x[b] = t;
                }
        }
        //// Normalize (This section make it not working correctly)
        //Complex f = 1.0 / sqrt(N);
        //for (unsigned int i = 0; i < N; i++)
        //	x[i] *= f;
}


// inverse fft (in-place)
void ifft(Complex* x,unsigned int N) {
        //int N = sizeof(*x);
        // conjugate the complex numbers
        for (int iz = 0; iz < N; iz++)
                x[iz].im = -x[iz].im;

        // forward fft
        fft( x,N );

        // conjugate the complex numbers again
        for (int iz = 0; iz < N; iz++) {
                x[iz].im = -x[iz].im / N;
                x[iz].re /= N;
        }
}

//po essai
int FFTmain() {
        Complex data[] = { Complex(1.0, 0.0), Complex(1.0, 0.0), Complex(1.0, 0.0), Complex(1.0, 0.0), Complex(0.0, 0.0), Complex(0.0, 0.0), Complex(0.0, 0.0), Complex(0.0, 0.0)    };


        // forward fft
        fft(data,8);

        std::cout << "fft" << std::endl;
        for (int i = 0; i < 8; ++i) {
                std::cout << data[i].re << "    +i     " << data[i].im << std::endl;
        }

        // inverse fft
        ifft(data,8);

        std::cout << std::endl << "ifft" << std::endl;
        for (int i = 0; i < 8; ++i) {
                std::cout << data[i].re << "    +i     " << data[i].im << std::endl;
        }
        return 0;
}

/*
fft
(4,0)
(1,-2.41421)
(0,0)
(1,-0.414214)
(0,0)
(1,0.414214)
(0,0)
(1,2.41421)

ifft
(1,-0)
(1,-5.55112e-017)
(1,2.4895e-017)
(1,-5.55112e-017)
(5.55112e-017,0)
(5.55112e-017,5.55112e-017)
(0,-2.4895e-017)
(5.55112e-017,5.55112e-017)
*/
