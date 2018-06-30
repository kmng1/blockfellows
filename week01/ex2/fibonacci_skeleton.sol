pragma solidity ^0.4.22;


contract Fibonacci {
    function calculate(uint position) public pure returns (uint result) {
        /* Carry out calculations to find the nth Fibonacci number */
        // F(n) = F(n-1) + F(n-2) where F(0) = 0 and F(1) = 1  2,3,5,8,...

        uint[10] memory fibo;
        fibo[0] = 0;
        fibo[1] = 1;

        uint n = 1;
        while (n < position) {
            ++n;
            fibo[n] = fibo[n-1] + fibo[n-2];
        }
        return fibo[position];

    }

    /* Add a fallback function to prevent contract payability and non-existent function calls */
    function () payable {
        revert();
    }
}
