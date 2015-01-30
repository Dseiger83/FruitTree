class Calendar
	
	def initialize
		startMonth = CurrentMonth()
		startYear = CurrentYear()

	end

	def AllMonths
		allMonths = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
	end

	def AllYears
		allYears = ['1st', '2nd', '3rd','4th', '5th', '6th', '7th', '8th', '9th', '10th']

	def MoveForward(CurrentMonth, CurrentYear)
		if CurrentMonth = 11
			Loop
			CurrentYear = CurrentYear + 1
		else CurrentMonth = CurrentMonth + 1 
	end

	def CurrentMonth
		month = allMonths[0]
	end

	def CurrentYear
		year = allYears[0]
	end

	def Loop
		CurrentMonth = allMonths[0]		
	end
	
end
