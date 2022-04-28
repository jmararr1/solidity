pragma solidity >=0.4.4 <=0.8.13;

contract Arrays {
    
    uint[5] public array_enteros;
    string[5] public array_strings;

    struct Persona {
        string nombre;
        uint edad;
    }

    Persona persona1 = Persona("Jorge", 21);
    Persona [] public array_personas;
    
    // Para usar push es necesario que esté dentro de una función
    function modificar_array (string memory _nombre, uint _edad) public {
        array_personas.push(Persona(_nombre, _edad));
    }

}