class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    @comment.save
    redirect_to post_path(@post)
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
