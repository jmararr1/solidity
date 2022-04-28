pragma solidity >=0.4.4 <=0.8.13;
pragma experimental ABIEncoderV2;

contract monitor_clients {

    struct purchase {
        uint price;
        string category;
        string boughtFrom;
        uint time;
        string ipAddress;
    }

    struct client {

        string name;
        uint age;
        bool isMale;
        bool hasFamily;
        // añadir un nonce para privacidad?
        bytes32 clientID;   // hash de los datos anteriores
        // ultima compra {price: 600, category: "tech", boughtFrom: "amazon"}
        // compras_ultimo_mes {compra0, compra1, compra2, compra3,}
    }

    client [] private allClients;
    purchase [] public allPurchases;    // mirar ejemplos de como hacer lo que tengo en mente
    mapping (bytes32 => purchase[]) clientPurchases;    // mapear comprador al array de compras
    mapping (bytes32 => string) clientIPAddress;    // mapear comprador a su direccion IP
    
    function newClient (string memory _name, uint _age, bool _isMale, bool _hasFamily) public {
        // llamar a a funcion para averiguar dirIP
        // llamar a funcion para averiguar valor de casa
        bytes32 _clientID = keccak256(abi.encodePacked(_name, _age, _isMale, _hasFamily));
        allClients.push(client(_name, _age, _isMale, _hasFamily, _clientID));
    }

    // Cuando se haga una compra, añadir esa compra al array de comprar correspondiente a ese clientID

    function newPurchase(bytes32 _clientID, uint _price, string memory _category, string memory _boughtFrom, uint _time, string memory _ipAddress) public {
        clientPurchases[_clientID] = allPurchases.push(purchase(_price, _category, _boughtFrom, _time, _ipAddress));
    }
    // enum store {AMAZON, WALLAPOP, FNAC, WALLMART, MEDIAMARKT}
    // funcion que dado un clientID, te devuelva su tienda favorita
    // funcion que dado un clientID, te devuelva el total de dinero gastado ese mes
    // funcion que dado un clientID, busque en su array de compras cuál es la IP más común y establecerla como su dirIP de casa. 
    // funcion que dado un clientID, usando las funciones de arriba, te de una estimacion de su poder adquisitivo
}
