class PostsController < ApplicationController
  before_action :authenticate_user, {only:[:new,:create]}

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      contents: params[:contents],
      user_id: @current_user.id
    )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/home/top")
    else
      render("posts/new")
    end
  end
end
