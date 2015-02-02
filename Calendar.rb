class Calendar
	
	def initialize
		@months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
		@years = ['1st', '2nd', '3rd','4th', '5th', '6th', '7th', '8th', '9th', '10th']
		@seasons = ['Spring', 'Summer', 'Fall', 'Winter']
		@CurrentMonth = 2
		@CurrentYear = 0
		@CurrentSeason = 0
	end

	def GetAllMonths
		return @months
	end

	def GetAllYears
		return @years
	end

	def GetAllSeasons
		return @seasons
	end

	def GetMonth
		return @months[@CurrentMonth]
	end

	def GetYear
		return @years[@CurrentYear]
	end

	def GetSeasons
		return @seasons[@CurrentSeason]
	end

	def SetCurrentSeason
		if (@CurrentMonth >1 && @CurrentMonth <5)
			@CurrentSeason = 0
		elsif (@CurrentMonth >4 && @CurrentMonth <8)
			@CurrentSeason = 1
		elsif (@CurrentMonth >7 && @CurrentMonth <11)
			@CurrentSeason = 2
		elsif (@CurrentMonth == 11 or @CurrentMonth == 0 or @CurrentMonth == 1)
			@CurrentSeason = 3
		end
	end

	def MoveForward
		if @CurrentMonth == 11
			@CurrentYear = @CurrentYear + 1
			@CurrentMonth = 0
		else
			@CurrentMonth = @CurrentMonth + 1
		end
		SetCurrentSeason()
	end

end