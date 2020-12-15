class Api::V1::GolfCoursesController < ApplicationController


    def index
        golf_courses = GolfCourse.all 
    end 

    def show
        golf_course = GolfCourse.find(params[:id])
        render json: golf_course
    end

    def create
        golf_course = GolfCourse.create!(golf_course_params)
        render json: golf_course
    end

    def update
        golf_course = GolfCourse.find(params[:id])
        golf_course.update(golf_course_params)
        render json: golf_course
        
    end

    def destroy
        
        golf_course = GolfCourse.find(params[:id])
        golf_course.destroy
        render json: {}
    end

    private

    def golf_course_params
        params.require(:golf_course).permit(:id, :name, :items)  
    end



end
