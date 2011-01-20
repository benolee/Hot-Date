class Date
  def week
    Week.of_day self
  end

  def week_before
    Week.of_day self.beginning_of_week.advance(:days => -1)
  end

  def week_after
    Week.of_day self.end_of_week.advance(:days => 1)
  end
end
