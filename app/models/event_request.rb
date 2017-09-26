class EventRequest < ApplicationRecord
  belongs_to :responsable
  belongs_to :office
  belongs_to :event_request_status
  belongs_to :event_type
end
