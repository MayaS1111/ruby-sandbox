class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    perHour = @speed * 221
    
    if @speed >= 5 && @speed <= 8
      perHour = perHour * 0.9
    elsif @speed == 9
      perHour = perHour * 0.8
    elsif @speed == 10
      perHour = perHour * 0.77
    else
      perHour
    end
    
    puts perHour.to_f
  end

  def working_items_per_minute
    perHour = @speed * 221
    
    if @speed >= 5 && @speed <= 8
      perHour = perHour * 0.9
    elsif @speed == 9
      perHour = perHour * 0.8
    elsif @speed == 10
      perHour = perHour * 0.77
    else
      perHour
    end
    
    perMin = perHour / 60
    puts perMin.to_i
  end
end

AssemblyLine.new(6).production_rate_per_hour
