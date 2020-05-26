class MembersController < ApplicationController

    before_action :set_member, only: [:show, :edit, :update]

    def show
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
        params.require(:member).permit(:name, :date_of_birth)
    end
end

