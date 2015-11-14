class CommentsController < ApplicationController
  def create
    @message = Message.find(params[:post_id])
    @comment = @message.comments.create(params[:comment])
    redirect_to post_path(@message)
  end
end
