pragma solidity ^0.6.1;

contract HotelRoom {
    address payable public owner;
    enum Statuses {Vacant, Occupied}
    Statuses currentStatus;
    
    modifier onlyWhileVacant {
         require(currentStatus == Statuses.Vacant, "Currently occupied.");
         _;
    }
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }
    
    constructor() public {
         currentStatus = Statuses.Vacant;
    }
    
    event Occupy(address _occupant, uint _value);
    
    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
