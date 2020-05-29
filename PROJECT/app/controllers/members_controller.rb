class MembersController < ApplicationController

    before_action :set_member, only: [:show, :edit, :update]


    def get_in
        @member = Member.find_by(username: params[:member][:username])
        if @member
            if @member.authenticate(params[:member][:password])
                session[:user_id] = @member.id
                redirect_to @member
            else
                flash[:errors] =["Password didn't match"]
                redirect_to sign_in_path
            end
        else
            flash[:errors] =["Unable to find this username!"]
            redirect_to sign_in_path
        end
        #byebug
    end

    def sign_in
    end

    def sign_out
        session[:user_id] = nil
        redirect_to sign_in_path
    end

    def show
        if !@user
            flash[:errors] = ["You must be signed in to see individual member pages"]
            redirect_to sign_in_path
        end
    end
    
    def index
        @members = Member.all
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.create(member_params)
        if @member.valid?
          redirect_to @member
        else
          render :new
        end
    end

    def edit
    end

    def update
        @member.update(member_params)
        if @member.valid?
            redirect_to @member
        else
            render "edit"
        end
    end

    def destroy
        Member.destroy(params[:id])
        redirect_to members_path
      end

   
    private
    def set_member
        @member = Member.find(params[:id])
    end

    def member_params
        params.require(:member).permit(:name, :date_of_birth, :username, :password, :picture)
    end
end

