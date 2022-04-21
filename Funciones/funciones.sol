pragma solidity >=0.4.4 <=0.8.13;
pragma experimental ABIEncoderV2;
contract funciones {
    address [] public direcciones; 

    function nuevaDir() public {
        direcciones.push(msg.sender);
    }

    bytes32 public hash_value;

    function hash(string memory _datos) public {
        hash_value = keccak256(abi.encodePacked(_datos));
    }

    // Declarar un tipo de dato complejo
    struct comida {
        string nombre;
        string ingrediente;
    }

    comida public hamburguesa;

    function hamb (string memory _ingredientes) public {
        hamburguesa = comida("hamburgesa", _ingredientes);
    }

    struct Alumno {
        string nombre;
        string asignatura_favorita;
        uint curso;
    }

    bytes32 hashAlumn;

    function hashAlumno(string memory _nombre, string memory _asignatura_favorita, uint _curso) private {
        hashAlumn = keccak256(abi.encodePacked(_nombre, _asignatura_favorita, _curso));
    }

    Alumno [] public lista;
    mapping(string => bytes32) mapa_alumnos;
    bytes32 public hashID;

    // ver por qué aparece en rojo esa linea
    function nuevoAlumno (string memory _nombre, string memory _asignatura_favorita, uint _curso) public {
        lista.push(Alumno(_nombre, _asignatura_favorita, _curso));
        hashID = hashAlumno(_nombre, _asignatura_favorita, _curso);
        mapa_alumnos[_nombre] = hashID;
    }
}