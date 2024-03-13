class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  PREP_TIME_PER_LAYER = 2
  
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers * PREP_TIME_PER_LAYER
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end

  
end

lasagna = Lasagna.new
lasagna.remaining_minutes_in_oven(30)
lasagna.preparation_time_in_minutes(2)
lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
