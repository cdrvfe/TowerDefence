require './gamesystem'
require './core'

SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

core = Core.new
game = GameSystem.new(Core.new, SCREEN_WIDTH, SCREEN_HEIGHT)
game.start
