class Ticket < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :order
  before_create :date_cannot_be_in_past
  before_create :date_cannot_be_in_past_2

  def date_cannot_be_in_past
  	if self.start_day < Date.today
  	end
  end
  def date_cannot_be_in_past_2
  	if self.start_day < Date.today
   end
  end
end
