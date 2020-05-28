class Cult < ApplicationRecord
    has_many :oaths
    has_many :members, through: :oaths
    has_many :buildings
    has_many :locations, through: :buildings
    has_many :meetings, through: :buildings

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :slogan, presence: true
    # validates :member, uniqueness: true

    def sorted_oaths
        self.oaths.sort_by{|oath| oath.membership_level}.reverse
    end

    def member_count
        count = self.members.length
        members = count == 1 ? "member" : "members"
        "#{count} #{members}"
    end
    
end
