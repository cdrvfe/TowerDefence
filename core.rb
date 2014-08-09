require 'sdl'

class Core
  def update
    raise 'please override! @ Core . update'
  end

  def draw(screen)
    raise 'please override! @ Core . draw'
  end

  def exit_process
  end
end
