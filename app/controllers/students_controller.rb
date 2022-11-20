class StudentsController < ApplicationController

  # def index
  #   students = Student.all
  #   render json: students
  # end

  def index
    students = if params[:name]
      Student.by_name(params[:name])
    else
      Student.all
    end
    render json: students
  end

  def student_id
    students = Student.find(params[:id])
    render json: students
end

end
