class StudentsController < ApplicationController
    def create
        @online = Online.find(params[:online_id])
            @student = @online.students.create(params[:student].permit(:name, :email, :here))
        redirect_to online_path(@online)
    end

    def destroy
        @online = Online.find(params[:online_id])
        @student = @online.students.find(params[:id])
        @student.destroy
        redirect_to online_path(@online)
    end
end
