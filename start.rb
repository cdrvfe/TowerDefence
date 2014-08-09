require './gamesystem'
require './testcore'


SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480

core = TestCore.new
game = GameSystem.new(core, SCREEN_WIDTH, SCREEN_HEIGHT)
game.start
