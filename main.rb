require "./Player"
require "./Question"
require "./Game"

player1 = Player.new("P1")
player2 = Player.new("P2")

game = Game.new(player1,player2)
game.play