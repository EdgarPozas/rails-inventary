require 'digest'

class SessionsController < ApplicationController
    def index
    end

    def login
        email=params[:email]
        password=params[:password]
        password=Digest::SHA2.hexdigest password
        @user=User.where({email:email,password:password}).take
        if @user
            session[:current_user_id] = @user.id
            redirect_to "/"
        else
            @msg="Check the fields"
            render "index"
        end
    end
end
