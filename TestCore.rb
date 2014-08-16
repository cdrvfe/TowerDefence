require './Core.rb'
require './Field.rb'
require './Enemy.rb'
require './Attack.rb'
require './Route.rb'
require './GameObjectPool.rb'

class TestCore < Core

	def initialize
		@field = Field.new("./stage/Test.txt")
		@attack = Attack.new(1,1)

		#オブジェクトプール設定
		@gop = GameObjectPool.new
		@gop.addClass(Enemy)
		
		#敵生成（暫定
		route = Route.new("./route/TestStage.txt")
		for i in 0...5
			@gop.activateObject(Enemy, [route])
		end
	end

	def update
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
