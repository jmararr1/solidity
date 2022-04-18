pragma solidity >=0.4.4 <=0.8.13;
pragma experimental ABIEncoderV2;

contract hash {
    function CalcularHash(string memory _cadena) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena));    
    }

    function CalcularHash(string memory _cadena, uint _k, address _direccion) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));    
    }

    function CalcularHash3(string memory _cadena, uint _k, address _direccion) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "hola", uint(2)));    
    }
}