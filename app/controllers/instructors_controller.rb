class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
        @cohort = Cohort.find(@instructor.cohort_id)
    end

    def edit
        @instructor = Instructor.find(params[:id])
        
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructors_params)
        redirect_to '/instructors'
    end

    def destroy
        Instructor.find(params[:id]).destroy
        redirect_to '/instructors'
    end

    def new 
        @instructor = Instructor.new
    end

    def create 
        Instructor.create(instructors_params)
        redirect_to '/instructors'
    end

    def instructors_params
        params.require(:instructor).permit(:first_name, :last_name, :dob, :email, :education, :bio, :salary, :password, :avatar )
    end
end
