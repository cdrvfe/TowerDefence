require './ObjectPool.rb'

class GameObjectPool < ObjectPool
	def _isOccupied?(object)
		return object.isActive?
	end

	def _occupy(object)
	end
end
