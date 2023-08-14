// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol"; //imports libaries from openzeppelin and ERC721 is a way to ensure that all nfts act in a similar way.

contract TokenMaster is ERC721 { 
address public owner;
uint256 public totalOccasions;
uint256 public totalSupply;

struct Occasion {
    uint256 id;
    string name;
    uint256 cost;
    uint256 tickets;
    uint256 maxTickets;
    string date;
    string time;
    string location;
}
 
mapping(uint256 => Occasion) occasions;
mapping(uint256 => mapping(address => bool)) public hasBought;
mapping(uint256 => mapping(uint256 => address)) public seatTaken;   //event number,(seat number,whom the seat belongs to)
mapping(uint256 => uint256[]) seatsTaken;                         //stores how many seats are taken in a event



    modifier onlyOwner() { //only allows the dev/owner to manipulate the code.
        require(msg.sender == owner);
        _;
    }

   constructor(string memory _name,string memory _symbol) ERC721(_name,_symbol) {
    owner = msg.sender;

   }

    function list(
        string memory _name,
        uint256 _cost,
        uint256 _maxTickets,
        string memory _date,
        string memory _time,
        string memory _location
    ) public onlyOwner {
        
        totalOccasions++; //counter cache to count how many events exists in our block nad mapped the occasions which will create a list.
        occasions[totalOccasions] = Occasion(
            totalOccasions,
            _name,
            _cost,
            _maxTickets,
            _maxTickets,
            _date,
            _time,
            _location
        );             
    }

    //this function mint calls a nft,increments the value of nfts as it gets created and assigns it to the wallet of the owner
    //payable modifier allows money transaction from buyer to the dev as nft is bought

    function mint(uint256 _id, uint256 _seat) public payable {      //creates event id and seat number
        
        // Require that _id is not 0 or less than total occasions...
        require(_id != 0);
        require(_id <= totalOccasions);

        // Require that ETH sent is greater than cost / correct amount of cryptocurrency sent..
        require(msg.value >= occasions[_id].cost);

        // Require that the seat is not taken, and the seat exists...
        require(seatTaken[_id][_seat] == address(0));
        require(_seat <= occasions[_id].maxTickets);

        occasions[_id].tickets -=1;     //updates ticket count

        hasBought[_id][msg.sender] = true; // <-- Update buying status

        seatTaken[_id][_seat] = msg.sender; // <-- Assign seat

        seatsTaken[_id].push(_seat);     // <-- Update seats currently taken

        totalSupply++;               
        
        _safeMint(msg.sender,totalSupply);
    }


    function getOccasion(uint256 _id) public view returns (Occasion memory) {
        return occasions[_id];
    }

    function getSeatsTaken(uint256 _id) public view returns (uint256[] memory) {
        return seatsTaken[_id];
    }

    function withdraw() public onlyOwner {
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success);
    }


}