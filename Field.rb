# Fieldクラス

require "sdl"
require "./Unit.rb"
require "./ReadFileModule.rb"

class Field

	def initialize(filepath)
		load_map(filepath)
	end

	def load_map(filepath)
		filedata = ReadFileModule.read_text(filepath)

		@width  = filedata[0].to_i
		@height = filedata[1].to_i

		@mass = Array.new(@width){|x| Array.new(@height){|y| Unit.new(x, y)}}
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
SDL.init(SDL::INIT_EVERYTHING)
screen = SDL.set_video_mode(640, 480, 16, SDL::SWSURFACE)

field = Field.new("stage/Test.txt")
field.draw(screen)

screen.update_rect(0, 0, 0, 0)

sleep(2)
# drawテスト用コードここまで
