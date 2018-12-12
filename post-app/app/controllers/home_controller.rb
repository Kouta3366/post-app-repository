class HomeController < ApplicationController
  def top
    @posts = Post.all.order(created_at: :desc)
    @users = User.all
  end
end
