class CommentsController < ApplicationController
   def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
  end
 
  def destroy
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.find(params[:id])
    @comment_id = @comment.id
  	@comment.destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end



