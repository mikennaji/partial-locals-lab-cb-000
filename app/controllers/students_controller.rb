class Students < ApplicationController

  def show
    @student = Student.find(params[:id])
      @students = @classroom.students
  end

  def index
    @students = Student.search(params[:query])
    render 'index'
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end

end
