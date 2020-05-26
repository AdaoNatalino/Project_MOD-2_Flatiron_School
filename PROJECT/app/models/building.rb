class Building < ApplicationRecord
    belongs_to :cult
    belongs_to :location
    has_many :meetings

    validate :unique_per_location

    def unique_per_location
        if self.location.cults.any?{ |cult| cult == self.cult}
            self.errors[:base] << "A location can only have one building per cult"
        end    
    end

end
