require_relative 'Seaon'
require_relative 'FormPrompter'

class Fruit

	def Type?
		type = ['Peach(s)', 'Orange(s)', 'Grapefruit(s)', 'Pear(s)', 'Apple(s)', 'Banana(s)']
	end

	def Ripe?
		if (Season.Summer == true or Season.Fall == true)
			FormPrompter.Display 'Yum! So sweet!'
		elsif Season.Spring == true
			FormPrompter.Display 'Yuck! Too sour!'
		elsif Season.Winter == true
			FormPrompter.Display 'Yuck! Rotten fruit!'
		end
	end

end
