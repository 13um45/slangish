class CommentsController < ApplicationController
  before_filter :authorize
def create
    @slang = Slang.find(params[:slang_id])
    @comment = @slang.comments.create(comment_params)
    redirect_to slang_path(@slang)
  end
 
 def destroy
    @slang = Slang.find(params[:slang_id])
    @comment = @slang.comments.find(params[:id])
    @comment.destroy
    redirect_to slang_path(@slang)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
