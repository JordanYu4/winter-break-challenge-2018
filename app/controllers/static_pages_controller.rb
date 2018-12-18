class StaticPagesController < ApplicationController
    def home
        @posts = Post.all.order('created_at DESC').limit(12)
    end
   
    def sharings
        @posts = Post.page(params[:page]).order('created_at DESC')
    end 

    def submit_post
        @post = Post.new
    end


end
