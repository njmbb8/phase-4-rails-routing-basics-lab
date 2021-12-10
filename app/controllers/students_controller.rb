class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.sort {|a,b| b.grade <=> a.grade}
    end

    def highest_grade
        by_grade = Student.all.sort {|a,b| b.grade <=> a.grade}
        render json:  by_grade.first
    end
end
