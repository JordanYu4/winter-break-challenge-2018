class StaticPagesController < ApplicationController
    def home
    end
   
    def sharings
        @comments = Posts.page(params[:page]).order('created_at DESC')
    end 

    def stats
        
    end

end
