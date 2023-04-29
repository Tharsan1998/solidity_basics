// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Loop{
    //while loop
    //for loop
    //do while loop
   
   // in solidity create loop within the function only


 //while loop
   function loop() public pure returns(uint) {
       uint sum;
       uint count;

       while(count<5){
            sum+=count;
            count++;
       }
       return sum;
   }




  //for loop
   function loopX() public pure returns(uint){
       uint sumX;
       
       for(uint count=0;count<6;count++){
           sumX+=count;
       }
       return sumX;
   }



  // do while loop
   function loopY() public pure returns(uint){
       uint sum;
       uint count;

       do{
           sum+=count ;
           count++;
       } while(count<7);
       return sum;
   }

}