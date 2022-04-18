pragma solidity >=0.4.4 <=0.8.13;

contract funciones_globales {
    // funcion msg.sender
    function MsgSender() public view returns (address){
       return msg.sender; 
    }

    function BlockCoinbase () public view returns (address) {
        return block.coinbase;
    }

    function BlockDifficulty () public view returns (uint) {
        return block.difficulty;
    }

    // devuelve el tiempo actual en segundos
    function Now () public view returns (uint) {
        return block.timestamp;
    }

    function BlockNumber() public view returns (uint) {
        return block.number;
    }

    function MsgSig () public view returns (bytes4) {
        return msg.sig;
    }

    function txGasPrice() public view returns (uint) {
        return tx.gasprice;
    }
}

