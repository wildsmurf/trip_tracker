class Address < ApplicationRecord
  belongs_to :location
  belongs_to :trip, optional:  true
end
