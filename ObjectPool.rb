class ObjectPool
	def initialize()
		@objects_hash = Hash.new
	end

	def addClass(class_object)
		unless @objects_hash.key?(class_object)
			require './' + class_object.class + '.rb'
			@objects_hash[class_object] = Array.new
		end
	end

	def getInstance(class_object)
		next_array = Array.new
		
		@objects_hash[class_object].each{ |object|
			if _isOccupied(object)?
				_occupy(object)
			end
		}
	end

	def _isOccupied?(object)
		raise "Please Override @ObjectPool . _isOccupied?"
	end

	def _occupy(object)
		#raise "Please Override @ObjectPool . _occupy"
	end
	 
	#TODO: resize 
end
