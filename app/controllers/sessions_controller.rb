class SessionsController < ApplicationController
    def new
        
    end
 
    def create
        name = params[:name]
        if name || !name.empty?
          session[:name] = params[:name]
          redirect_to '/'
        else 
          redirect_to '/login'
        end
    end
end