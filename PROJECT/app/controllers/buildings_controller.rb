class BuildingsController < ApplicationController
    before_action :set_building, only: [:show, :edit, :update, :destroy]

    def new
        @building = Building.new

    end

    def create
        @building = Building.new(building_params)
        if @building.valid?
            @building.save
            redirect_to @building.cult
        else
            render :new
        end
    end


    def destroy
        @cult = @building.cult
        @building.destroy
        redirect_to @cult
    end

   
    private
    def set_building
        @building = Building.find(params[:id])
    end

    def building_params
        params.require(:building).permit!
    end
end
