// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0 <0.9.0;

contract MyContract3{
    //Mapping
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book{
        string title;
        string author;
    }
    
    constructor(){
        names[1] = "Josh";
        names[2] = "Nikki";
        names[3] = "Arosco";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}