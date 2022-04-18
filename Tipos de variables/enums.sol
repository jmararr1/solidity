pragma solidity >=0.4.4 <=0.8.13;

contract Ejemplos_enumeraciones {
    
    // enum nombre {estado0, estado1, ..., estado(n-1)}
    enum estado {ON, OFF}
    estado state;
    
    function encender() public {
        state = estado.ON;
    }

    function fijarEstado(uint _k) public {
        state = estado(_k);
    }

    function Estado() public view return (estado) {
        return state;
    }
    
    // enumeracion de direcciones
    enum direcciones {ARRIBA, ABAJO, DERECHA, IZQUIERDA}
    direcciones dir = direcciones.ARRIBA;

    function arriba() public {
        dir = direcciones.ARRIBA;
    }

    function abajo() public {
        dir = direcciones.ABAJO;
    }

    function derecha() public {
        dir = direcciones.DERECHA;
    }

    function izquierda() public {
        dir = direcciones.IZQUIERDA;
    }
}