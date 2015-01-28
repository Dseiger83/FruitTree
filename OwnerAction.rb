require_relative 'FormPrompter'
require_relative 'Owner'
require_relative 'Season'
require_relative 'Tree'

class OwnerAction

	def initialize
		GetOwnerName()
	end

	def GetOwnerName()
		name = GetName()
	end

	def GetName()
		name = FormPrompter.AskUser 'What is your name?'

		if (name == name.emty? or name == name.nil)
			GetName()
		else
			FormPrompter.DisplayFormatString('Welcome %s. Let\'s start carring for your tree!' [name.to_s])
			Owner.Name? = name
		end
	end

	def GetFruit()
		pick = FormPrompter.AskUser 'Do you wish to pick some fruit?'

		if (pick.downcase != 'yes' or != 'no')
			GetFruit()
		elsif pick.downcase = 'yes'
			GetQuantity()
		elsif pick.downcase = 'no'
		end
	end

	def GetQuantity()
		quantity = FormPrompter.AskUser 'How many do you wish to pick?'

		if (quantity < 0 or >Tree.FruitCount)
			FormPrompter.DisplayFormatString('Please enter a number greater than 0 and less than or equal to %s.' [Tree.FruitCount])
			GetQuantity()
		else
			Tree.FruitCount = (quantity - Tree.FruitCount)
			Fruit.Ripe?
		end
	end

end