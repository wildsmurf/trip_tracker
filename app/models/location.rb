class Location < ApplicationRecord
  has_many :addresses, dependent: :destroy
end
