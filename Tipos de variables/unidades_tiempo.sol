pragma solidity >=0.4.4 <=0.8.13;

contract tiempo {
    
    // unidades de tiempo
    uint public tiempo_actual = now;
    uint public dos_horas = 2 hours;
    uint public minuto = 1 minutes;    // nos devuelve los segundos que tiene n minutos
    uint public cinco_dias = 5 days;

    function MasSegundos() public view returns (uint) {
        return now + 50 seconds;
        // return block.timestamp + 50 seconds;
    }

    function MasDias() public view returns (uint) {
        return now + 3 days;
        // return block.timestamp + 3 days;    
    }

}