// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract varscope {
    uint private   val = 4; //state variable

    function get() public  view returns(uint){
      return val;
    }
}

// inheritence or derived
contract varscope2 is varscope {
    function get2() public  pure returns(uint){
      return 5;
    }
}



contract varscope {
    uint public   val = 4; //state variable

    function get() public  view returns(uint){
      return val;
    }
}

contract varscope2  {
    //getting value through instance
    varscope waste = new varscope();

    function get2() public  view returns(uint){
      return waste.val();
    }
}


