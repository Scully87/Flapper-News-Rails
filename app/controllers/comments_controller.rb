class CommentsController < ApplicationController
	private
		def comment_params
	    params.require(:comment).permit(:body)
	  end

	def create
    comment = post.comments.create(comment_params)
    respond_with post, comment
  end
  
end
