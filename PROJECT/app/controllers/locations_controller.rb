class LocationsController < ApplicationController
    before_action :set_location, only: [:show]

    def show
    end
    
    def index
        @locations = Location.all
    end
    
    private

    def set_location
        @location = Location.find(params[:id])
    end
end
