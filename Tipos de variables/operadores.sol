pragma solidity >=0.4.4 <=0.8.13;

contract Operadores {
    uint a = 32;
    uint b = 4;

    uint public suma = a+b;
    uint public resta = a - b;
    uint public division = a/b;
    uint public  multiplicacion = a*b;

    uint public resto = a%b;
    uint public exponenciacion = a**b;

    bool public test1 = a>b;
    bool public test2 = a<b;
    bool public test3 = a>=b;
    bool public test4 = a!=b;
}