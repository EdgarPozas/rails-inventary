require 'digest'

class UsersController < ApplicationController
    def index
    end

    def show
    end

    def new
        @user=User.new
    end

    def create
        password=params[:user][:password]
        password=Digest::SHA2.hexdigest password
        @user=User.new(email: params[:user][:email],password: password, userName: params[:user][:userName])
        if @user.save
            redirect_to "/users/created"
        else 
            render :new
        end
    end

    def created
    end

    def edit
    end

    def update
    end
    
    def destroy
    end
end
