pragma solidity >=0.4.4 <=0.8.13;

contract maa_variables {

    // strings
    string public mi_primer_string;
    string public saludo = "hola";
    string public empty = "";

    // booleans
    bool public isEmpty = false;
    bool public isCool = true;

    // bytes
    bytes32 hash = keccak256(abi.encodePacked(saludo));
    bytes4 identificador;

    function ejBytes4() public {
        identificador = msg.sig;
    }

    // address
    address public direccion_local1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    address public direccion_local2 = 0x7B38Da6a701c568545dCfcB03FcB875f56beddC4

}