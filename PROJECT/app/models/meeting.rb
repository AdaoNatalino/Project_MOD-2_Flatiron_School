class Meeting < ApplicationRecord
    has_many :attendances
    has_many :members, through: :attendances
    belongs_to :building
    has_one :location, through: :buildings
    has_one :cult, through: :buildings

end
