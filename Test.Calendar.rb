require_relative "Calendar"
require "test/unit"

class TestCalendarLibrary < Test::Unit::TestCase

	def test_StartMonth
		assert_equal('January', Calendar.CurrentIndex)