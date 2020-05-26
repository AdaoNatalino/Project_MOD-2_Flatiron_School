class Location < ApplicationRecord
    has_many :buildings
    has_many :cults, through: :buildings

end
