class FormPrompter
	def self.AskUser question
		puts question
		return gets.chomp
	end

	def self.OtherFormatString(string, option)
		puts "#{string} #{options.each {|o| o}}"
	end

	def self.DisplayFormatString(string, args)
		puts string % args
	end

	def self.Display(string)
		puts string
	end
end
