class CommentsController < ApplicationController
  before_filter :load_commentable
  
  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
    @comment.moderated = false
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    @comment.moderated = false
    if @comment.save
      redirect_to @commentable, notice: "Комментарий появится на сайте после проверки модератором"
    else
      render :new
    end
  end

  def destroy
    @comment = @commentable.comments.find(params[:id])
    @comment.destroy
    redirect_to @commentable, notice: "Комментарий удалён"
  end

  def update
    @comment = @commentable.comments.find(params[:id])
    @comment.moderated = true
    @comment.save
    redirect_to @commentable, notice: "Комментарий одобрен"
  end
  
  private

    def load_commentable
      resource, id = request.path.split('/')[1, 2]
      @commentable = resource.singularize.classify.constantize.find(id)
    end
    
    def comment_params
      params.require(:comment).permit(:content)
    end
end