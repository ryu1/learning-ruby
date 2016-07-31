# frozen_string_literal: true

# SleepyPerson
class SleepyPerson
  def register_hadler(&handler)
    @event_handler = handler
  end

  def wake_up!
    @event_handler.call Time.now, 'woke up'
  end
end

john = SleepyPerson.new
john.register_hadler { |item, message| p [item, message] }
john.wake_up!
