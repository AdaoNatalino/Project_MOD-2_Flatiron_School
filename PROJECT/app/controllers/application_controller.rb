class ApplicationController < ActionController::Base

    before_action :define_user

    def define_user
        @user = Member.find_by(id: session[:user_id])
    end

   
end




