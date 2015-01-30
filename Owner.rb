require_relative 'Fruit'
require_relative 'OwnerAction'
require_relative 'FormPrompter'

class Owner

	def initialize
		@name = OwnerAction.GetName
		@tree = OwnerAction.SelectTree
	end

	def Name?
		return @name 
	end

	def Water
		treeType = Fruit.Type?
		FormPrompter.DisplayFormatString ('You watered your %s tree!'[treeType.to_s])
		@watered = true
	end

	def Fertilize
		treeType = Fruit.Type?
		FormPrompter.DisplayFormatString ('You fertilized your %s tree!'[treeType.to_s])
		@fertilized = true
	end

	def Pick(quantity)
		howMany = OwnerAction.GetQuantity
		whichFruit = Fruit.Type?
		FormPrompter.DisplayFormatString ('You picked %s %s!'[howMany.to_s, whichfruit.to_s])
		@picked = true
	end

	def Eat
		whichfruit = Fruit.Type?
		FormPrompter.DisplayFormatString ('You ate your %s!'[whichfruit.to_s])
		@eaten = true
	end

end