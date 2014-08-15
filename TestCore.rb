require './Core.rb'
require './Field.rb'
require './Enemy.rb'
require './Attack.rb'
require './Route.rb'

class TestCore < Core

	def initialize
		@field = Field.new("./stage/Test.txt")
		@enemy = Enemy.new(Route.new("./route/TestStage.txt"))
		@attack = Attack.new(1,1)
	end

	def update
		@enemy.update
		@attack.update
	end

	def draw(screen)
		@field.draw(screen)
		@enemy.draw(screen)
		@attack.draw(screen)
	end
end
