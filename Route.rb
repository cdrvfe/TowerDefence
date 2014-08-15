# Fieldクラス

require "sdl"
require "./ReadFileModule.rb"

class Route
	def initialize(filepath)
		@startX = 0
		@startY = 0
		@endX = 1
		@endY = 0

		@direction = [3,0,0,2,0,0,1,0,0,4,0,0]

		createRouteFromFile(filepath)
	end

	def createRouteFromFile(filepath)
		filedata = ReadFileModule.read_text(filepath)
		@startX = filedata[0].to_i
		@startY = filedata[1].to_i
		@endX = filedata[2].to_i
		@endY = filedata[3].to_i

		@direction = filedata[4].csv2ints(filedata[4])
	end

	attr_reader :startX, :startY, :endX, :endY, :direction

end
