# CKKS MATLAB Implementation

This repository contains a MATLAB implementation of the Cheon-Kim-Kim-Song (CKKS) scheme.  There will be infrequent updates to get the scheme to a working cryptosystem.  Initially, this implementation was started to gain an understanding of the CKKS scheme for graduate related research.

CCKS allows us to perform computations on vectors of complex (and real) values. CKKS uses approximate arithmetic instead of exact arithmetic, in the sense that once we finish computation we might get a slightly different result than if we did the computation directly. This means that if you encrypt 2 and 3, add their ciphertexts, and decrypt you might get something like 4.99 or 5.01 but not 5.

![CKKS](G:\My Drive\_PhD Research\Disseration\LWE Playground\MATLAB RLWE\CKKS\ckks-matlab\ckks.png)

The figure above illustrates a high-level view of CKKS.  The message,$m$, a vector of values that we wish to perform computations on, is first encoded into , which is the plaintext polynomial.  Thereafter, it is encrypted using a public key.

The resulting ciphertext, $c$ , consists of a couple of polynomials whose properties enable us to perform operations on it such as addition, multiplication, and rotation.
