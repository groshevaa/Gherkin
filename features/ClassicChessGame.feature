Feature: Classic Chess Game. 
  The chess game is a recreational and competitive 
  turn-based board game for two players.


  The Maker makes a word for the Breaker to guess. 
  The game is over when the Breaker guesses the Maker's word.
  
  Background: Given a chessboard consists of 64 checks
    And checks has two colors black and white
    And a chessboard width is 8 checks, a-h alternating black and white
    And a chessboard height is 8 checks, 1-8 alternating black and white
    And two chessplayers
    And 8 white Pawns and 2 white Knights belogs to one chessplayer
    And 8 black Pawns and 2 black Knights belogs to opponent chessplayer
    
  Scenario: 1. Pawn's first move
    Given A Pawn is staying on the start position. Line 2 for white Pawn, line 7 for black Pawn
    When 
    Then 
    
  Scenario: 2. Pawn's next move
    Given
    When
    Then
    
  Scenario: 3. Pawn's attack
    Given
    When
    Then

  Scenario: 4. Pawn's defeat
    Given
    When
    Then
    
  Scenario: 5. Pawn's promotion
    Given
    When
    Then

  Scenario: 6. Pawn puts the opponent's king in check
    Given
    When
    Then 

  Scenario: 7. Knight's move
    Given
    When
    Then
    
  Scenario: 8. Knight's attack
    Given
    When
    Then
    
  Scenario: 9. Knight's defeat
    Given
    When
    Then
    
  Scenario: 10. Knight puts the opponent's king in check
    Given
    When
    Then 