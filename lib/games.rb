require './lib/event'

class Games
  attr_reader :events,
              :year

  def initialize(year)
    @year = year
    @events = []
  end

  def add_event(event)
    @events << event
  end

  def summary
    headers
    all_events_summary
  end

  def headers
    event_header = "Event".ljust(15)
    max_age_header = "Max Age".ljust(20)
    min_age_header = "Min Age".ljust(20)
    average_header = "Average Age".ljust(20)

    puts "#{event_header} #{max_age_header} #{min_age_header} #{average_header} StdDev Age"
  end

  def event_summary(event)
    puts "#{event.name.ljust(15)}
    #{event.max_age.to_s.ljust(20)}
    #{event.min_age.to_s.ljust(20)}
    #{event.average_age.to_s.ljust(20)}
    #{event.standard_deviation_age.to_s}"
  end

  def all_events_summary
    @events.map do |event|
      event_summary(event)
    end.join("\n")
  end
end
