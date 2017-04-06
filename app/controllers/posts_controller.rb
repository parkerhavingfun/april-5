class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(new_post_params)
    if @post.save
      redirect_to posts_url
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end
  
  private
    
    def new_post_params
      params.require(:post).permit(:title, :body)
    end
  
  
  
end
