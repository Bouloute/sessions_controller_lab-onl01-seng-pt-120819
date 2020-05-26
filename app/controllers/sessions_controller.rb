class SessionsController < ApplicationController
    def new
        
    end
 
    def create
        name = params[:name]
        if name
          session[:name] = params[:name]
          redirect_to '/login'
        else 
          redirect_to '/'
        end
    end
end