class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
        @courses = Course.find(params[:id])
    end

    def new
        @course = Course.new
    end

    def create
        @course.create(courses_params)
        redirect_to '/courses'
    end
    
    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(courses_params)
        redirect_to '/courses'
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end

    def courses_params
        params.require(:courses).permit(:name, :hours, :description, :cohort_id, :avatar)
    end
end
