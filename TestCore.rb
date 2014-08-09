require './Core.rb'
require './Field.rb'

class TestCore < Core

	def initialize
		@field = Field.new
	end

	def update
	end

	def draw(screen)
		@field.draw(screen)
	end
end
