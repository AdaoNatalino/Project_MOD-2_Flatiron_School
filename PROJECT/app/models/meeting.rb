class Meeting < ApplicationRecord
    has_many :attendances
    has_many :members, through: :attendances
    belongs_to :building
    has_one :location, through: :building
    has_one :cult, through: :building

    validates :building_id, presence: true

    validate :booked_for_the_future

    def booked_for_the_future
        if self.date < Date.today
            self.errors[:base] << "A meeting should be booked for a future date!"
        end   
    end
end
