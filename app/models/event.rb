class Event < ApplicationRecord
  belongs_to :event_request
  belongs_to :supplier
end
