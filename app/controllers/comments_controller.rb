class CommentsController < ApplicationController
before_filter :authorise

def create
	@book = Book.find params[:book_id]
	@comment = @book.comments.new(comment_params)
	@comment.member_id = @current_member.id
	@comment.save
	
	respond_to do |format|
			format.html { redirect_to @book}
	end
end

private
def comment_params
		params.require(:comment).permit(:content, :book_id, :member_id, :rating)
end



end
