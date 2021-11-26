// SPDX-License-Identifier: UNLICENSED
// This is an exercise for personal usage. I am trying to build my first flutter wallet for iOS and Android
pragma solidity 0.8.7;

contract Andromeda {
    int balance;

    constructor()  {
        balance = 0;
    }

    function getBalance() view public returns(int){
        return balance;
    }

    function depositToBalance(int addedAmount) public{
        balance = balance + addedAmount;
    }

    function withdrawFromBalance(int withdrawnAmount) public{
        balance = balance - withdrawnAmount;
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> 8bedad7882aba66122df93668565d9c62f24eb5b
