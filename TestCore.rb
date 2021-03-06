require './Core.rb'
require './Field.rb'
require './Enemy.rb'
require './Attack.rb'
require './Route.rb'
require './GameObjectPool.rb'
require './Wave.rb'

class TestCore < Core

	def initialize
		@field = Field.new("./stage/Test.txt")
		@attack = Attack.new(1,1)

		#オブジェクトプール設定
		@gop = GameObjectPool.new
		@gop.addClass(Enemy)

		#wave生成（暫定
		@wave = Wave.new('wave/Test.txt')
		
		#ルート生成（暫定
		@route = Route.new("./route/TestStage.txt")
	end

	def update
		@wave.update(@gop, @route)

		@gop.getArray(Enemy).each{|enemy|
			enemy.update
		}
		@attack.update
	end

	def draw(screen)
		@field.draw(screen)
		@gop.getArray(Enemy).each{|enemy|
			enemy.draw(screen)
		}
		@attack.draw(screen)
	end
end
