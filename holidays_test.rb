require 'minitest/autorun'
require 'pry-byebug'
require_relative 'holidays'

module Calendar
  class HolidayTest < Minitest::Test
    include Holiday
    def test_mothers_day
      result = next_mothersday(Date.parse '2018-08-20')
      assert_equal Date.parse('2019-02-10'), result
    end
    def test_fathers_day
      result = next_fathersday(Date.parse '2018-08-20')
      assert_equal Date.parse('2018-11-11'), result
    end
  end
end
