class Event < ActiveRecord::Base
  has_event_calendar
  belongs_to :user
  
  def self.today(current_user)
    events = []
    current_user.events.each do |event|
      events.push(event) if event.start_at.to_date == Time.now.to_date
    end
    events
  end
end
