class CultsController < ApplicationController
    before_action :set_cult, only: [:show, :edit, :update]

    def show
        if @user
            @oath = Oath.find_by(cult:@cult, member:@user)
            @membership_level = @oath.membership_level
        end
    end
    
    def index
        @cults = Cult.all
    end

    def new
        @cult = Cult.new
    end

    def create
        @cult = Cult.create(cult_params)
        #byebug
        if @cult.valid?
          redirect_to @cult
        else
          render :new
        end
    end

    def edit
    end

    def update
        @cult.update(cult_params)
        if @cult.valid?
            redirect_to @cult
        else
            render "edit"
        end
    end

    def destroy
        Cult.destroy(params[:id])
        redirect_to cults_path
      end

   
    private
    def set_cult
        @cult = Cult.find(params[:id])
    end

    def cult_params
        params.require(:cult).permit(:name, :slogan, :building_name)
    end
end