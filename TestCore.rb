require './Core.rb'
require './Field.rb'
require './Enemy.rb'

class TestCore < Core

	def initialize
		@field = Field.new
		@enemy = Enemy.new(Route.new)
	end

	def update
		@enemy.update
	end

	def draw(screen)
		@field.draw(screen)
		@enemy.draw(screen)
	end
end
