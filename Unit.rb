# Unitクラス

require "sdl"

class Unit

	def initialize(x, y)
		@SIZE=32
		@x=x
		@y=y
	end

	def draw(screen)
		screen.fill_rect(@x * @SIZE, @y * @SIZE, @SIZE, @SIZE, [128, 255, 255])
	end
end

# drawテスト用コードここから
# SDL.init(SDL::INIT_EVERYTHING)
# screen = SDL.set_video_mode(640, 480, 16, SDL::SWSURFACE)

# unit = Unit.new()
# unit.draw(screen)

# screen.update_rect(0, 0, 0, 0)

# sleep(2)
# drawテスト用コードここまで