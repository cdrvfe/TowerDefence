# Attackクラス

require "sdl"

class Attack
	def initialize(x, y)
		@time=30
		@x=x
		@y=y
	end

	def draw(screen)
		if time == 0
			r=12
			screen.fill_rect(@x, @y, r, [128, 255, 255])		
		end
	end

	def update
		time--
		if time == 0
			return true
		end
		return false
	end
end

# drawテスト用コードここから
# SDL.init(SDL::INIT_EVERYTHING)
# screen = SDL.set_video_mode(640, 480, 16, SDL::SWSURFACE)

# attack = Attack.new()
# attack.draw(screen)

# screen.update_rect(0, 0, 0, 0)

# sleep(2)
# drawテスト用コードここまで
