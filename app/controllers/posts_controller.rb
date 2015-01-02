class PostsController < ApplicationController

	def index
    respond_with Post.all
  end

private
	def post_params
    params.require(:post).permit(:link, :title)
  end
end
