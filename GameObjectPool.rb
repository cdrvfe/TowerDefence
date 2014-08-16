require './ObjectPool.rb'

class GameObjectPool < ObjectPool
	def _isOccupied?(object)
		return object.isActive
	end

	def _occupy(object)
	end

	def activateObject(class_object, args = Array.new)
		object = createInstance(class_object)
		object.activate(*args)
		return object
	end
end
