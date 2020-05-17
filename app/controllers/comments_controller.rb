class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to maigo_path(params[:maigo_id])
    else
      flash[:notice] = "コメントできませんでした"
    end

  end

  
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, maigo_id: params[:maigo_id])
  end
end
