class ObjectPool
	def initialize
		@objects_hash = Hash.new
	end

	def addClass(class_object)
		unless @objects_hash.key?(class_object)
			#require './' + class_object.class + '.rb'
			@objects_hash[class_object] = Array.new
		end
	end

	def getArray(class_object)
		has_key = @objects_hash.key?(class_object)
		has_key ? @objects_hash[class_object] : null
	end

	def createInstance(class_object)
		@objects_hash[class_object].each do |object|
			if _isOccupied?(object)
				_occupy(object)
				return object
			end
		end

		object = class_object.new
		@objects_hash[class_object].push(object)
		_occupy(object)
		return object
	end

	def _isOccupied?(object)
		raise "Please Override @ObjectPool . _isOccupied?"
	end

	def _occupy(object)
		#raise "Please Override @ObjectPool . _occupy"
	end
	 
	#TODO: resize 
end
