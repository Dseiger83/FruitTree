class FormPrompter
	def self.AskUser question
		puts question
		return gets.chomp
	end

	def self.DisplayFormatString(string, args)
		puts string % args
	end

	def self.Display(string)
		puts string
	end
end