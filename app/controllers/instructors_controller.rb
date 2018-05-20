class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all.order(:id)
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        
            curr = Cohort.find(cohort_id)
            
        
        @instructor.update(instructors_params)
        
        redirect_to edit_instructor_path(@instructor)
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        respond_to { |format|
    format.html {redirect_to '/instructors'}
    format.js
    }
        
    end

    def new 
        @instructor = Instructor.new
    end

    def create 
        Instructor.create(instructors_params)
        redirect_to '/instructors'
    end

    def instructors_params
        params.require(:instructor).permit(:first_name, :last_name, :dob, :email, :education, :bio, :salary, :password, :avatar, :cohort_id )
    end
end
