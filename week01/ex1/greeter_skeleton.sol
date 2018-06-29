pragma solidity ^0.4.22;


contract Greeter {
    /* Add one variable to hold our greeting */
    string public greeting;

    constructor(string _greeting) public {
        /* Write one line of code for the contract to set our greeting */
        greeting = _greeting;
    }

    function greet() public constant returns (string) {
        /* Write one line of code to allow the contract to return our greeting */
        return greeting;

    }

    function setGreeting(string newGreeting) public {
        // change greeting
        greeting = newGreeting;
    }

    /* Add a fallback function to prevent contract payability and non-existent function calls */
    function () public {
        revert();
    }

}
