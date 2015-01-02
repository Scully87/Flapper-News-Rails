class PostsController < ApplicationController

	def post_params
    params.require(:post).permit(:link, :title)
  end
end
