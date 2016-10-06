class CommentsController < ApplicationController
  def create
    @gym = Gym.find(params[:gym_id])
    @comment = @gym.comments.create(comments_params)
    redirect_to gym_path(@gym)
  end

  private
  def comments_params
     params.require(:comment).permit(:body)
   end
end
