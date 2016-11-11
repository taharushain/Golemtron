class EditorsController < ApplicationController
	before_action :authenticate_user!
  before_action :is_editor

	layout 'editor'

	def index
		
	end

  def create_post
    @post = current_user.posts.build
  end



private

  def post_params
    params.require(:post).permit(:title, :content, :bootsy_image_gallery_id)
  end

  # def set_post
  #   @post = Post.find(params[:id])
  # end

  def is_editor

  	if current_user.is_a? Editor
	  
  	else
      flash[:alert] = "You are not an author, don't try to fool us -__-"
      redirect_to root_path
  	end    
  end

end
