class StoresController < ApplicationController
    def index
        @stores=Store.all
    end

    def show
        @stores=Store.find(params[:id])
    end

    def new
        @store=Store.new
    end

    def create
        @store=Store.new(name: params[:store][:name],RFC: params[:store][:rfc])
        if @store.save
            redirect_to @store
        else 
            render :new
        end
    end

    def edit
    end

    def update
    end
    
    def destroy
    end
end
