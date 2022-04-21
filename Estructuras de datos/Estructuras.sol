pragma solidity >=0.4.4 <=0.8.13;

contract Estructuras {
    
    // Cliente de una página web
    struct cliente {
        uint id;
        string name;
        string dni;
        string mail;
        uint phone_number;
        uint credit_card;
        uint cvv;
    }

    cliente cliente1 = cliente(1, "Jorge", "12345678F", "mail@mail.com", 345543, 11111, 222);

    // Productos de la página web
    struct producto {
        string nombre;
        uint precio;
    }

    struct ong {
        address ong;
        string nombre;
    }

    struct cause {
        uint id;
        string nombre;
        uint fondos_objetivo;
    }
}