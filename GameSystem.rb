require 'sdl'

class GameSystem
	def initialize(core, width, height, bits = 32)
		@core = core

		# SDLの初期化
		SDL.init(SDL::INIT_VIDEO)
		@screen = SDL::setVideoMode(width, height, bits, SDL::SWSURFACE)
	end

	def start
		loop_module
	end

private
	def loop_module
		while true
			while event=SDL::Event.poll
				case event
				when SDL::Event::Quit #ウィンドウの×ボタンが押された
					exit_module
			end
		end

		@core.update
		@core.draw(@screen)

		@screen.flip
		sleep(0.06)
		end
	end

	def exit_module
		@core.exit_process
		exit
	end
end
