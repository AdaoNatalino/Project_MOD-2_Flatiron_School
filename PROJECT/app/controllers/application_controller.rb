class ApplicationController < ActionController::Base

    before_action :define_user

    def define_user
        @user = Member.find_by(id: session[:user_id])
    end

   
end


#   def kick_back
#     if session[:user_id] == nil
#       redirect_to '/sign-in'
#     end
#   end


