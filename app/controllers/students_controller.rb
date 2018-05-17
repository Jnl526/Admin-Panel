class StudentsController < ApplicationController
    def index
        @students = Student.all.order(:id)
    end

    def show
        @student = Student.find(params[:id])
        
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])

        new_cohorts = params[:student][:cohort_ids]
        new_cohorts.each do |cohort_id|
            curr = Cohort.find(cohort_id).id
            
        end

        @student.update(students_params)
        redirect_to edit_student_path(@student)
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        respond_to { |format|
    format.html {redirect_to '/students'}
    format.js
    }
        
        
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
