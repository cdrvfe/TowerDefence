require './Route.rb'

class Enemy

	def initialize(route)
		@SIZE = 24
		@DX = [0, 0, 1, 0, -1]
		@DY = [0, -1, 0, 1, 0]

		@route = route
		@x = @route.startX
		@y = @route.startY
		@steps = 0
		@direction = @route.direction[0]
	end

	def update
		@direction = @route.direction[@steps]
		@x += @DX[@direction]
		@y += @DY[@direction]
		@steps += 1
	end

	def draw(screen)
		screen.fill_rect(@x * @SIZE, @y * @SIZE, @SIZE, @SIZE, [255, 0, 0])
	end
end
