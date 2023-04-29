// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract hello {
 // int , uint , bool,string ,address
 // visibility => Public , Private , Internal , External 

 int public Num = -10;
 uint public Num2 = 10;   

 int public MaxValue = type(int ).max;
  //57896044618658097711785492504343953926634992332820282019728792003956564819967
 int public MinValue = type(int).min; 
 //-57896044618658097711785492504343953926634992332820282019728792003956564819968

 uint public MaxValue1 = type(uint ).max;
 // 115792089237316195423570985008687907853269984665640564039457584007913129639935
 uint public MinValue1 = type(uint).min; 
 // 0

 bool public check = true ;

 string public name =" Tharsan";

 address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;



}