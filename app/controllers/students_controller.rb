class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    id = params[:id]
    @student = Student.find(id)
    toggle_flag=!@student.active
    @student.active = toggle_flag
    @student.save
    redirect_to  action:"show", id:id
  end

  def show
    #@student = Student.find(params[:id])
    set_student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end