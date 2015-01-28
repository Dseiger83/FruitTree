class Calendar
	
	def initialize
		@allMonths = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
		@currentIndex = 0
	end

	def AllMonths
		return @allMonths
	end

	def MoveForward()
		@currentIndex = @currentIndex + 1
	end

	def CurrentMonth
		return @allMonths[@CurrentMonth]
	end
	
end
