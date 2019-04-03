class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  validate :start_date_cannot_be_in_the_past,event_cannot_have_same_date_and_venue
  def start_date_cannot_be_in_the_past
    if start_date < Date.today
      errors.add(:start_date, "can not be in the past")
    end
  end
  def event_cannot_have_same_date_and_venue
   errors.add(:base,"can not have the same date and venue of others events") if 
   Event.find_by(event_venue.id: venue_venue, start_date: start_date).present?
  end
end
