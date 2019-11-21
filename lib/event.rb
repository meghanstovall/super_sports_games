require standard_deviation.rb

class Event

  attr_reader :name_of_event, :ages_of_participants

  def initialize(name_of_event, ages_of_participants)
    @name_of_event = name_of_event
    @ages_of_participants = ages_of_participants
  end

  def max_age
    max_age_value = 0
    ages_of_participants.each do |age|
      if age > max_age_value
        max_age_value = age
      end
    end
    max_age_value
  end

  def min_age
    min_age_value = 200
    ages_of_participants.each do |age|
      if age < min_age_value
        min_age_value = age
      end
    end
    min_age_value
  end

  def average_age
    adding_ages = 0
    ages_of_participants.each do |age|
      adding_ages += age
    end
    num_of_participants = ages_of_participants.count
    average_age_result = adding_ages.to_f / num_of_participants.to_f
    average_age_final_result =average_age_result.round(2)
    average_age_final_result
  end

  def standard_deviation_age

  end

end
