class CohortsController < ApplicationController

    def index
        @cohorts = Cohort.all.order(:id)
    end

    def show
        @cohort = Cohort.find(params[:id])
        @students = Student.where(cohort_id: @cohort.id)
        @add_students = Student.where(cohort_id: nil)
    end

    def new
        @cohort = Cohort.new
    end

    def create
        Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end
    
    def edit
    @cohort = Cohort.find(params[:id])

    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)

        redirect_to edit_cohort_path(@cohort)

    end

    def addstudents
        @cohort = Cohort.find(params[:id])
        Student.where(id: params[:student_id]).update_all(cohort_id: @cohort.id)
    end

    def removestudent
        puts "blah"
        @student = Student.find(params[:student_id])
        @student.update_attribute(:cohort_id, nil)
    end
    def destroy
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id, :avatar)
    end
end
