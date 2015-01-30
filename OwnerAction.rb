require_relative 'FormPrompter'
require_relative 'Owner'
require_relative 'Season'
require_relative 'Tree'

class OwnerAction

	def self.GetName()
		name = FormPrompter.AskUser 'What is your name?'

		if (name == name.emty? or name == name.nil)
			GetName()
		else
			FormPrompter.DisplayFormatString('Welcome %s. Let\'s start carring for your tree!' [name.to_s])
		end
		return name 
	end

	def self.GetFruit()
		pick = FormPrompter.AskUser 'Do you wish to pick some fruit?'

		if (pick.downcase != 'yes' or != 'no')
			GetFruit()
		elsif pick.downcase = 'yes'
			GetQuantity()
		elsif pick.downcase = 'no'
		end
	end

	def self.GetQuantity(Tree)
		quantity = FormPrompter.AskUser 'How many do you wish to pick?'

		if (quantity < 0 or >FruitCount)
			FormPrompter.DisplayFormatString('Please enter a number greater than 0 and less than or equal to %s.' [FruitCount])
			GetQuantity()
		else
			FruitCount = (quantity - TFruitCount)
			Fruit.Ripe?
		end
		return FruitCount
	end

	def self.SelectTree
		choices = (Fruit.Type?) 
		choose = FormPrompter.AskUser 'What type of tree would you like to buy?' + choices.inpsect
		if (Fruit.Type?.include choose.capitalize)
			return Tree.new(choose)
		else self.SelectTree
		end
	end

end