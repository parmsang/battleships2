This program is one which simulates the game play in the boardgame Battleships.

Battleships (or Battleship) is a game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid.


Object                                      Messages

Game                                  won?, lost?, hits, misses

Player


Ship                                      size?, direction?, sunk? hit?

Board                            place_ship, constrain_ship, overlap?,fire

Opponent


OpponentShip                               sunk?, size?, direction?, hit?


OpponentBoard                    place_ship, constrain_ship,overlap?, fire    
