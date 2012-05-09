class Event < ActiveRecord::Base
  has_event_calendar
  belongs_to :user

  MONTHS = %w(enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre)
  
  def self.today(current_user)
    events = []
    current_user.events.each do |event|
      events.push(event) if event.start_at.to_date == Time.now.to_date and event.done == false
    end
    events
  end

end
