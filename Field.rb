# Fieldクラス

require "sdl"
require "./Unit.rb"

class Field

	def initialize()
		# 15*15のフィールド
		@SIZE=15
		@mass = Array.new(@SIZE){Array.new(@SIZE){Unit.new()}}
 
	end

	def draw(screen)
		@mass.each do |line|
			line.each do |m|
				m.draw(screen)
			end
		end
	end
end

# drawテスト用コードここから
# SDL.init(SDL::INIT_EVERYTHING)
# screen = SDL.set_video_mode(640, 480, 16, SDL::SWSURFACE)

# field = Field.new()
# field.draw(screen)

# screen.update_rect(0, 0, 0, 0)

# sleep(2)
# drawテスト用コードここまで