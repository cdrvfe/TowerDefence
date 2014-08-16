require './Route.rb'

class Enemy
	attr_reader :isActive

	def activate(route)
		@isActive = true
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
		if (@steps < @route.direction.length) && @isActive
			@direction = @route.direction[@steps]
			@x += @DX[@direction]
			@y += @DY[@direction]
			@steps += 1
		else
			@isActive = false
		end
	end

	def draw(screen)
		if @isActive
			screen.fill_rect(@x * @SIZE, @y * @SIZE, @SIZE, @SIZE, [255, 0, 0])		
		end
	end
end
