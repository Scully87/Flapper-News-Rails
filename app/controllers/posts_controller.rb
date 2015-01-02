class PostsController < ApplicationController

	def index
    respond_with Post.all
  end

  def create
    respond_with Post.create(post_params)
  end


private
	def post_params
    params.require(:post).permit(:link, :title)
  end
end
