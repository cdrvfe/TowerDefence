# Fieldクラス

require "sdl"

class Route
	def initialize()
		@startX = 0
		@startY = 0
		@endX = 1
		@endY = 0

		@direction = [3,0,0,2,0,0,1,0,0,4,0,0]
	end
	attr_reader :startX, :startY, :endX, :endY, :direction
end