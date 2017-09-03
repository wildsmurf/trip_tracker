class Trip < ApplicationRecord
    has_many :addresses
    belongs_to :user
end
 
