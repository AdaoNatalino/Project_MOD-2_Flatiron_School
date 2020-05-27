class OathsController < ApplicationController

    before_action :set_oath, only: [:show, :edit, :update, :destroy]

    # def show
    # end
    
    # def index
    #     @oaths = Oath.all
    # end

    def new
        @oath = Oath.new(member: @user)
    end

    def create
        #byebug
        @oath = Oath.new(oath_params)
        @oath.member = @user
        if @oath.valid?
            @oath.save
            redirect_to @oath.cult
        else
            render :new
        end
    end

    def join_cult
        @member = Member.find(params[:id])
        @oath = Oath.new(member: @member)
        render :new
    end


    # def edit
    # end

    # def update
    #     @oath.update(oath_params)
    #     if @oath.valid?
    #         redirect_to @oath
    #     else
    #         render "edit"
    #     end
    # end

    # def destroy
    #     oath.destroy(params[:id])
    #     redirect_to oaths_path
    #   end

   
    private
    def set_oath
        @oath = Oath.find(params[:id])
    end

    def oath_params
        params.require(:oath).permit(:cult_id)
    end
end
