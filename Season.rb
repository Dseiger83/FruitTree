require_relative 'Calendar'

class Season

	def self.Spring()
		months = Calendar.AllMonths
		return months()[2, 3, 4,]
	end

	def self.Summer()
		months = Calendar.AllMonths
		return months[5, 6, 7]
	end

	def self.Fall()
		months = Calendar.AllMonths
		return months[8, 9, 10]
	end

	def self.Winter()
		months - Calendar.AllMonths
		return months[11, 0, 1]
	end

end