class CohortsController < ApplicationController

    def index
        @cohorts = Cohort.all.order(:id)
    end

    def show
        @cohort = Cohort.find(params[:id])

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

    def destroy
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end

    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id, :avatar)
    end
end
