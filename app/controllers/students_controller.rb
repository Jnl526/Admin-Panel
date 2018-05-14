class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(students_params)
        redirect_to '/students'
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end

    def new 
        @student = Student.new
    end

    def create 
        Student.create(students_params)
        redirect_to '/students'
    end

    def students_params
        params.require(:student).permit(:first_name, :last_name, :dob, :email, :education, :bio, :password, :avatar)
    end
end
