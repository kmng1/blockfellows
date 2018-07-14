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


    function fibo(uint n) public pure returns (uint result) {
    // recursive: https://github.com/web3j/web3j/blob/master/codegen/src/test/resources/solidity/fibonacci/Fibonacci.sol
	// https://coursetro.com/posts/code/100/Solidity-Events-Tutorial---Using-Web3.js-to-Listen-for-Smart-Contract-Events 

    event Notify(uint input, uint result);

    function fibonacci(uint number) public view returns(uint result) {
        if (number == 0) return 0;
        else if (number == 1) return 1;
        else return Fibonacci.fibonacci(number - 1) + Fibonacci.fibonacci(number - 2);
    }

    function fibonacciNotify(uint number) public returns(uint result) {
        result = fibonacci(number);
        emit Notify(number, result);
    }


	/* Add a fallback function to prevent contract payability and non-existent function calls */
    function () payable {
        revert();
    }
}
