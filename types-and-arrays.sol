pragma solidity 0.5.12;

contract HelloWorld{

    string public message = "Hello World";

    uint[] public numbers = [1, 20, 45];

    function getMessage() public view returns(string memory){
        return message;
    }
    function setMessage(string memory newMessage) public {
      message = newMessage;
    }

    function getNumber(uint index) public view returns(uint){
        return numbers[index];
    }

    function setNumber(uint newNumber, uint index) public {
      numbers[index] = newNumber;
    }

    function addNumber(uint newNumber) public {
      numbers.push(newNumber);
    }
}
