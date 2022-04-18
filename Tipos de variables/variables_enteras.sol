pragma solidity >=0.4.4 <=0.8.13;

contract enteros {

    uint entero_sin_signo;
    uint entero_sin_signo_init = 3;
    uint cota = 5000;

    // especificando el numero de bits
    uint8 entero8bits; 
    uint16 entero16bits = 65535; // de 0 a 65535

    int16 entero_signopos16 = 32767;    // de 0 a 32767: 2^(n-1) -1
    int16 entero_signoneg16 = -32768;   // de -32768 a -1: -2^(n-1)
}