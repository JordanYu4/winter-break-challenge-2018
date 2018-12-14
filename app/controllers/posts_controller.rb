class PostsController < ApplicationController

    def index 
        @posts = Post.all 
    end

    def new 
        
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            flash[:success] = "Sharing posted!"
            redirect_to sharings_url
        else
            flash[:error] = @post.errors.full_messages.to_sentence
            redirect_to submit_post_url
        end
    end

  private
    def post_params
      params.require(:post).permit(:name, :team, :content, :avatar, :photo, :video)
    end
end
