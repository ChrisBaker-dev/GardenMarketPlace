class ListingsController < ApplicationController

    ## Authenticate user before any action
    #before_action :authenticate_user!

    def index
        @produce = Produce.all
        @id = current_user.id

    end

    def new
        @listing = Listing.new
        @produce = Produce.order(:name)
    end

    def update

    end

    def delete

    end

    def edit

    end

    def show

    end

    def create
        render action: 'index'

    end

end
