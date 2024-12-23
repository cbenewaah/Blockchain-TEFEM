//SPDX-License-Identifier:MIT
pragma solidity ^0.8.16;

contract SimpleStorage{

    uint256 myFavouriteNumber;
    struct Person{
        string name;
        uint favNum;
        }
        Person [] listOfPeople;
        mapping (string => uint) nameToFavnum;
    
    //function to add people and their fav. number
    function addPeople(string memory _name, uint _favNum) public{
    listOfPeople.push (Person(_name,_favNum)) ;
    nameToFavnum[_name] = _favNum;
    }

    //function to get fav. number by names
    function getNum (string memory _name) public view returns(uint){
    return nameToFavnum[_name];
    }

    //function to store favourite number
    function store(uint _favouriteNumber) public virtual{
        myFavouriteNumber = _favouriteNumber;
    }

    //function to retrieve number
    function retrieve () public view returns(uint256){
    return myFavouriteNumber;
    }

}