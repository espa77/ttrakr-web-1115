class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    lesson = Lesson.create(lesson_params)
    redirect_to lesson
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :notes, {:shirt_ids => []})
  end
end
