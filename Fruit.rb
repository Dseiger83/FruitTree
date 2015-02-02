require_relative 'Season'
require_relative 'FormPrompter'

class Fruit

	def Type?
		type = ['Peach(s)', 'Orange(s)', 'Grapefruit(s)', 'Pear(s)', 'Apple(s)', 'Banana(s)']
	end

	def Ripe?
		if (Season.Summer == true or Season.Fall == true)
			FormPrompter.Display 'Yum! So sweet!'
			ripe = true	
		elsif Season.Spring == true
			FormPrompter.Display 'Yuck! Too sour!'
			ripe = false
		elsif Season.Winter == true
			FormPrompter.Display 'Yuck! Rotten fruit!'
			ripe = false
		end
	end

end
