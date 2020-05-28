class AttendancesController < ApplicationController


    def create
        # byebug
        @attendance = Attendance.create(attendance_params)
        redirect_to @attendance.meeting.cult
    end

    def attendance_params
        params.require(:attendance).permit!
    end
end
