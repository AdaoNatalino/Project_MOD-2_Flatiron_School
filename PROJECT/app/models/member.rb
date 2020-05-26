class Member < ApplicationRecord
    has_many :oaths
    has_many :cults, through: :oaths
    has_many :attendances
    has_many :meetings, through: :attendances

end
