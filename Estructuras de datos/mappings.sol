pragma solidity >=0.4.4 <=0.8.13;
pragma experimental ABIEncoderV2;

contract Mappings {

    mapping (address => uint) public elegir_num;

    // Al definir la funcion como public, crea automaticamente un metodo get.
    function elegirNumero(uint _numero) public {
        elegir_num[msg.sender] = _numero;
    }

    function consultarNumero () public view returns (uint) {
        return elegir_num[msg.sender];
    }

    // Declaramos un maping que asocia una persona a su capital

    mapping (string => uint) cantidad_dinero;

    function Dinero(string memory _nombre, uint _cantidad) public {
        cantidad_dinero[_nombre] = _cantidad;
    }

    function consultarDinero(string memory _nombre) public view returns (uint) {
        return cantidad_dinero[_nombre];
    }

    struct Persona {
        string nombre;
        uint edad;
    }

    mapping (uint => Persona) personas;

    function dni_persona(uint _numDni, string memory _nombre, uint _edad) public {
        personas[_numDni] = Persona(_nombre, _edad);
    }

    function VisualizarPersona (uint _dni) public view returns (Persona) {
        return personas[_dni];
    }
}