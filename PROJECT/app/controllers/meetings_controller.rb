class MeetingsController < ApplicationController

    before_action :set_meeting, only: [:show, :edit, :update, :destroy]

    def show
    end
    
    # def index
    #     @meetings = Meeting.all
    # end

    def new
        @meeting = Meeting.new
    end

    def create
        @meeting = Meeting.create(meeting_params)
        if @meeting.valid?
          redirect_to @meeting
        else
          render :new
        end
    end

    # def edit
    # end

    # def update
    #     @meeting.update(meeting_params)
    #     if @meeting.valid?
    #         redirect_to @meeting
    #     else
    #         render "edit"
    #     end
    # end

    def destroy
        #byebug
        if @meeting.date > Date.today
            @cult = @meeting.cult
            @meeting.destroy
            redirect_to cult_path(@cult)
        else 
            flash[:message] = "You cannot delete a meeting that already happened!"   
            redirect_to @meeting 
        end
    end

   
    private
    def set_meeting
        @meeting = Meeting.find(params[:id])
    end

    def meeting_params
        params.require(:meeting).permit(:date, :building_id)
    end
end
