class CommentsController < ApplicationController
  def index
    if params[:q].present?
      @comment = Comment.where('content like ?', "%#{params[:q]}%")
      
    else
      @comment = Comment.all
      
    end
  end

  def create
  	@comment = Comment.create(comment_params)
  	@comment.save!
  	#render json: @comment.as_json
  end

  private def comment_params
  	params.require(:comment).permit(:content)
  end
end
