Feature: Classic Chess Game. 
  The chess game is a recreational and competitive turn-based board game for two players.
  The object of the game is to checkmate the opponent's king, whereby the king is under immediate attack (in "check") and there is no way for it to escape. 
  There are also several ways a game can end in a draw. 

  Background: 
    Given a chessboard consists of 64 squares
    And squares has two colors black and white
    And a chessboard width is 8 squares, a-h alternating black and white
    And a chessboard height is 8 squares, 1-8 alternating black and white
    And two chessplayers called Player1 and Player2
    And a chessplayer owning white chesspieces has the first turn
    And 8 white Pawns and 2 white Knights belongs to one chessplayer
    And 8 black Pawns and 2 black Knights belongs to opponent chessplayer
    
  Scenario: 1. a Pawn's first move on two steps
    Given a Chessplayer has a Pawn
    And it is the Chessplayer's turn
    And the Pawn's position is line 2 for a white Pawn
    And the Pawn's position is line 7 for a black Pawn
    When the Chessplayer moves his Pawn straight forward two squares
    And both squares are vacant
    Then the Pawn stands on the new position
    
  Scenario: 2. a Pawn's first move on one step or next move
    Given a Chessplayer has a Pawn
    And it is the Chessplayer's turn
    And the Pawn's position is not line 8 for a white Pawn
    And the Pawn's position is not line 1 for a black Pawn
    When the Chessplayer moves his Pawn straight forward one square
    And the target square is vacant
    Then the Pawn stands on the new position
    
  Scenario: 3. a Pawn's attack
    Given a Chessplayer has a Pawn
    And it is the Chessplayer's turn
    And an enemy chesspiece stands one square diagonally in front of the Pawn
    When the Chessplayer moves his Pawn one square diagonally in front of the Pawn where the enemy chesspiece stands
    Then the Pawn stands on the new position
    And the enemy chesspiece is captured and removed from the board

  Scenario: 4. a Pawn's defeat
    Given Player1 has a Pawn
    And it is not Player1's turn
    When Player2 moves his chesspiece where the Player1's Pawn stands
    Then Player1's Pawn is captured and removed from the board
    And Player2's chesspiece stands on the new position
    
  Scenario: 5. a Pawn's promotion
    Given a Chessplayer has a Pawn
    And it is the Chessplayers's turn
    And the Pawn's position is line 7 for a white Pawn
    And the Pawn's position is line 2 for a black Pawn
    When the Chessplayer moves his Pawn straight forward one square
    And the target square is vacant
    Then the Pawn stands on the new position
    Then the Chessplayer has the opportunity to promote this Pawn to any chesspiece except the king

  Scenario: 6. a Pawn puts the opponent's king in check
    Given a Chessplayer has a Pawn
    And it is the Chessplayer's turn
    And the enemy king stands two squares vertically and one square horizontally in relation to the Pawn
    When the Chessplayer moves his Pawn one square in front of the Pawn
    Then the Pawn stands on the new position
    And the enemy king is under immediate attack (in "check")
    
  Scenario: 7. a Knight's move
    Given a Chessplayer has a Knight
    And it is the Chessplayer's turn
    When the Chessplayer moves his Knight two squares vertically and one square horizontally, or two squares horizontally and one square vertically
    And the target square is vacant
    Then the Knight stands on the new position

  Scenario: 8. a Knight's attack
    Given a Chessplayer has a Knight
    And it is the Chessplayers's turn
    When the Chessplayer moves his Knight two squares vertically and one square horizontally, or two squares horizontally and one square vertically
    And the target square is occupied with the enemy's chesspiece but not the king
    Then the Knight stands on the new position
    And the enemy chesspiece is captured and removed from the board
    
  Scenario: 9. a Knight's defeat
    Given Player1 has a Knight
    And it is not Player1's turn
    When Player2 moves his chesspiece where the Player1's Knight stands
    Then Player1's Knight is captured and removed from the board
    And Player2's chesspiece stands on the new position
    
  Scenario: 10. a Knight puts the opponent's king in check
    Given a Chessplayer has a Knight
    And it is the Chessplayer's turn
    And the enemy king stands within two steps of Chessplayer's Knight
    When Chessplayer moves his Knight one step closer to the enemy king
    Then the Knight stands on the new position
    And the enemy king is under immediate attack (in "check")