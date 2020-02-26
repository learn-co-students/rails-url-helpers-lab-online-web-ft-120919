class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  def activate
    # binding.pry
    @student.active = !@student.active
    @student.save
    # redirect_to 'show'
    redirect_to student_path(@student) 

  end

  def index
    @students = Student.all
  end

  def show
    
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end