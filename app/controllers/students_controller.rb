class StudentsController < ApplicationController
    def index
        s = Student.all
        render json: s
    end 

    def grades
        ordered_by_grades = Student.all.sort_by(&:grade)
        render json: ordered_by_grades
    end
end
