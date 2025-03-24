// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ValueTypes {
    bool public _bool = true;

    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool1;
    bool public _bool4 = _bool == _bool1;
    bool public _bool5 = _bool != _bool1;

    int public _int1 = 1;
    int public _int2 = -1;
    uint public _int3 = 12;
    uint256 public _int4 = 23232332;

    address public _address = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;
    address payable public _address1 = payable(_address);

    bytes32 public _byte32 = 'MiniSolidity';
    bytes1 public _byte1 = _byte32[0];

    enum ActionSet {Buy, Hold, Sell}

    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns(uint){
        return uint(action);
    }

}
