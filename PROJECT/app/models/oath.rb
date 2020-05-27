class Oath < ApplicationRecord
    belongs_to :member
    belongs_to :cult

    # validate :unique_per_cult
    #before_save :unique_per_cult

    accepts_nested_attributes_for :member


    # def unique_per_cult
    #     if self.member.cults.any?{ |cult| cult == self.cult}
    #         self.errors[:base] << "A member can only join a cult once"
    #     end    
    # end


end
