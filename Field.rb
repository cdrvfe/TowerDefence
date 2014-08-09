# Fieldクラス

require "sdl"

class Field
	# 15*15のフィールド
	@SIZE=15
	@mass = Array.new(@SIZE){Array.new(@SIZE)}

	def initialize()
		@SIZE.times do |x|
			@SIZE.times do |y|
				@mass[x][y] = Unit.new()
			end
		end 
	end

	def draw(screen)
		@mass.each do |mass|
			mass.draw(screen)
		end
	end
end

# drawテスト用コードここから
# SDL.init(SDL::INIT_EVERYTHING)
# screen = SDL.set_video_mode(640, 480, 16, SDL::SWSURFACE)

# field = Field.new()
# field.draw(screen)

# sleep(2)
# drawテスト用コードここまで