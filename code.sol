// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract FunctionErrors {
    function requireC(uint _UPSCAge) 
    public pure returns (string memory){
        uint _UPSCAge = 21;
        require(_upscAge >= _UPSCAge, "You doesn't pass eligibility criteria,You are under 21");
        return ("You are eligible to give the exam");
    }
    
    function assertC(uint _userAge) 
    public pure returns (string memory){
        uint _LegalAge = 60;
        assert(_userAge >= _LegalAge);
        return("You are eligible to get pension");
    }
    
    function revertC(uint _amount) 
    public pure {
        uint _Balance = 3000;
        if (_amount > _Balance) {
            revert("You didn't have sufficient balance");
        }
    }
}
