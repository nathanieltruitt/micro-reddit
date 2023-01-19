class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show update destroy ]

  def index
    @comments = Comment.all
    render json: @comments, status: :ok
  end

  def show
    render json: @comment, status: :ok
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    head :no_content
  end

  private
  
  def comment_params
    params.require(:comment).permit(:message, :user_id, :post_id, :comment_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end