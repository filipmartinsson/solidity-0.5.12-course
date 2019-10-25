pragma solidity 0.5.12;

//Interface
contract HelloWorld{
    function createPerson(address creator, string memory name, uint age, uint height) public payable;
}

contract ExternalContract{

    HelloWorld instance = HelloWorld(<ADDRESS>);

    function externalCreatePerson(string memory name, uint age, uint height) public payable{
        //CALL createPerson in HelloWorld contract
        //Forward any ether to HelloWorld
        instance.createPerson.value(msg.value)(msg.sender, name, age, height);
    }
}
