class CommentsController < ApplicationController
  def create
    lesson = Lesson.find(params[:lesson_id])
    lesson.comments.create(comment_params.merge(user: current_user))
    # comment = lesson.comments.new(comment_params)
    # comment.user = current_user
    # comment.save

    redirect_to lesson
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
