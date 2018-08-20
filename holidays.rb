require 'date'

# in Norway
module Calendar
  module Holiday

    FEBRUARY = 2
    NOVEMBER = 11

    def mothersday(year)
      second_sunday_in(FEBRUARY, year)
    end

    def fathersday(year)
      second_sunday_in(NOVEMBER, year)
    end

    def next_mothersday(today = Date.today)
      this_years = mothersday(today.year)
      if this_years >= today
        this_years
      else
        mothersday(today.year + 1)
      end
    end

    def next_fathersday(today = Date.today)
      this_years = fathersday(today.year)
      if this_years >= today
        this_years
      else
        fathersday(today.year + 1)
      end
    end

    def second_sunday_in(month, year)
      # Day number 8 always falls within
      # the second week of the month
      second_week = Date.new(year, month, 8)
      second_week + days_until_sunday(second_week)
    end

    def days_until_sunday(date)
      (7 - date.wday) % 7
    end

  end
end
