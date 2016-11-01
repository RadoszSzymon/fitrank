class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @gym = Gym.find(params[:gym_id])
    @comment = Comment.create(params[:comment].permit(:body))
    @comment.user_id = current_user.id
    @comment.user_email = current_user.email
    @comment.gym_id = @gym.id

    if @comment.save
      redirect_to gym_path(@gym)
    else
      render 'new'
    end
  end
end
