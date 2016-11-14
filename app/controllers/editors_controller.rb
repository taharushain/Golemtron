class EditorsController < ApplicationController
	before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy, :like]
  before_action :owned_post, only: [:edit, :update, :destroy]
  before_action :is_editor

  layout 'editor'

  def index

  end

  def new
    @post = current_user.posts.build
  end

  def create

    @post = current_user.posts.build(post_params)

    if params[:create_post]
      @post.is_drafted = false
      @post.submitted = true
      @post.published = false
      if @post.save
        flash[:success] = "Your post has been submitted!"
        redirect_to blog_editor_path
      else
        flash[:alert] = "Your post couldn't be submitted!  Please check the form."
        render "new" 
      end
    elsif params[:draft_post]
      @post.is_drafted = true
      @post.submitted = false
      @post.published = false
      if @post.save
        flash[:success] = "Your post has been saved!"
        redirect_to blog_editor_path
      else
        flash[:alert] = "Your post couldn't be saved!  Please check the form."
        render "new" 
      end
    end

    # redirect_to blog_editor_new_path

  end

  def draft_list
    @posts = Post.where(is_drafted: true).all.order('created_at DESC').page params[:page]    
  end



  private

  def post_params
    params.require(:post).permit(:title, :content, :bootsy_image_gallery_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def owned_post
    unless current_user == @post.user
      flash[:alert] = "That post doesn't belong to you!"
      redirect_to root_path
    end
  end

  def is_editor

  	if current_user.is_a? Editor

  	else
      flash[:alert] = "You are not an author, don't try to fool us -__-"
      redirect_to root_path
    end    
  end

end
