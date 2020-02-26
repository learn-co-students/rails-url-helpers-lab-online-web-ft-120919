class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @status = @student.active ? "This student is currently active." : "This student is currently inactive."
  end
  def activate_student
    @student=Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to("/students/#{@student.id}")
  end
  private

    def set_student
      @student = Student.find(params[:id])
    end
end