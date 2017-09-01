class Trip < ApplicationRecord
  validates_presence_of :name
  has_many :locations
end
