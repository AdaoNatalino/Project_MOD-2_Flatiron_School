class Member < ApplicationRecord
    has_many :oaths
    has_many :cults, through: :oaths
    has_many :attendances
    has_many :meetings, through: :attendances

    validates :name, presence: true
    validates :name, uniqueness: true
        
    validate :valid_age
    
    def valid_age
        if self.age < 10
            self.errors[:base] << "Members must be over 10 years old"
        # elsif self.date_of_birth > Date.today
        #     self.errors[:base] << "Date of birth must be earlier than today" #just now realising this is pointless
        end

    end
    
    def age
        dob = self.date_of_birth
        now = Time.now.utc.to_date
        now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end


end
