class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @hat = Hat.find(params[:hat_id])
    created_hat = @hat.comments.create(comment_params.merge(user: current_user))
    if created_hat.invalid?
      flash[:alert] = 'Invalid data, comment not saved!'
    end
    redirect_to hat_path(@hat)
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end

end
