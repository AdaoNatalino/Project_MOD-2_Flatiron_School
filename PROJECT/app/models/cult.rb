class Cult < ApplicationRecord
    has_many :oaths
    has_many :members, through: :oaths
    has_many :buildings
    has_many :locations, through: :buildings
    has_many :meetings, through: :buildings

    validates :name, uniqueness: true
    validates :slogan, presence: true
    
end
