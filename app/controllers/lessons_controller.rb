class LessonsController < ApplicationController
  self.skip_before_action(:authenticate!, {except: [:new, :create]})
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
    lesson = current_user.lessons.create(lesson_params)
    redirect_to lesson
  end

  private
  def lesson_params
    params.require(:lesson).permit(:title, :notes, {:shirt_ids => []})
  end

  def verify_owner!
    lesson = Lesson.find(params[:id])
    redirect_to root_path, notice: "Stop being a jerk" unless lesson.user == current_user
  end
end
