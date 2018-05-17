class CoursesController < ApplicationController
    def index
        @courses = Course.all.order(:id)
        
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
        @cohort = Cohort.find(params[:id])
        @instructor = Instructor.find(@cohort.instructor_id)
    end

    def update
        @course = Course.find(params[:id])
        #Find the course
        #Find all associated cohorts and assign them the course id 
        new_cohorts = params[:course][:cohort_ids]
        new_cohorts.each do |cohort_id|
            curr = Cohort.find(cohort_id)
            curr.update(course_id: @course.id)
        end
        # @course.cohorts.each do |cohort|
        #     cohort.update(course_id: @course.id)
        # end
        @course.update(courses_params)
        redirect_to courses_path(@courses)
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end

    def courses_params
        params.require(:course).permit(:name, :hours, :description,:avatar)
    end
end
