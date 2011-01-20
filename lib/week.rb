class Week
  def self.of_day day
     Week.new :day_in_the_week => day
  end

  def initialize options = {}
    @first_day = (options.fetch(:day_in_the_week) {Date.current}).beginning_of_week
    @last_day = (options.fetch(:day_in_the_week) {Date.current}).end_of_week
    raise "ABORT!" if !@first_day.is_a?(Date)
    raise "ABORT!" if !@last_day.is_a?(Date)
  end

  def each(&block)
    [monday,tuesday,wednesday,thursday,friday,saturday,sunday].each do |day|
      block.call day
    end
  end

  def monday
    @first_day
  end

  def tuesday
    @first_day.advance(:days => 1)
  end

  def wednesday
    @first_day.advance(:days => 2)
  end

  def thursday
    @first_day.advance(:days => 3)
  end

  def friday
    @first_day.advance(:days => 4)
  end

  def saturday
    @first_day.advance(:days => 5)
  end

  def sunday
    @first_day.advance(:days => 6)
  end
end
