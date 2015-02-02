require_relative 'Calendar'
require 'test/unit'

class TestCalendar < Test::Unit::TestCase

	def test_MoveForward
		myCalendar = Calendar.new
		assert_equal("Spring", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("April", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("May", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("June", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("July", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("August", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("September", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("October", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("November", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("December", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("January", myCalendar.GetMonth)
		myCalendar.MoveForward
		assert_equal("February", myCalendar.GetMonth)
	end

	def test_SetSeason
		myCalendar = Calendar.new
		#starts @ 2 or first month of spring
		assert_equal("Spring", myCalendar.GetSeasons)
		myCalendar.MoveForward
		myCalendar.MoveForward
		assert_equal("Spring", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("Summer", myCalendar.GetSeasons)
		myCalendar.MoveForward
		myCalendar.MoveForward
		assert_equal("Summer", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("Fall", myCalendar.GetSeasons)
		myCalendar.MoveForward
		myCalendar.MoveForward
		assert_equal("Fall", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("Winter", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("Winter", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("Winter", myCalendar.GetSeasons)
		myCalendar.MoveForward
		assert_equal("Spring", myCalendar.GetSeasons)
	end

end