// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Challenge05 {

    uint256 public id_count = 0;

    struct BasketBallPlayer {
        uint256 id;
        string player_name; 
        string team_name; 
        string position; 
        uint256 height;
        uint256 age; 
        address creator;
    }

    mapping(uint256 => BasketBallPlayer) public players;

    function createPlayer(
        string memory player_name, 
        string memory team_name,
        string memory position,
        uint256 height,
        uint256 age
    ) public {
        id_count++;
        players[id_count] = BasketBallPlayer(id_count, player_name, team_name, position, height, age, msg.sender);
    }

    function getPlayer(uint256 playerID) public view returns (BasketBallPlayer memory) {
        return players[playerID];
    }
}