class Time
  def week
    Week.of_day self.to_date
  end
end
