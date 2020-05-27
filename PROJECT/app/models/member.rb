class Member < ApplicationRecord
    has_secure_password
    
    has_many :oaths
    has_many :cults, through: :oaths
    has_many :attendances
    has_many :meetings, through: :attendances

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :username, uniqueness: true
    validates :password, presence: true
        
    validate :valid_age
    
    def valid_age
        if self.age < 10
            self.errors[:base] << "Members must be over 10 years old"
        end
    end
    
    def age
        dob = self.date_of_birth
        now = Time.now.utc.to_date
        now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

    def avg_membership_level
        memberships = self.oaths.map{|oath| oath.membership_level}
        avg = (memberships.sum/memberships.length.to_f).round(2)
    end


end
