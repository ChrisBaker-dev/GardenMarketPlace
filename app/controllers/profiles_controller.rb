class ProfilesController < ApplicationController

    before_action :set_user, only: [:update, :show, :destroy, :edit]

    def index
        @id = current_user.id
    end

    def show
        @profile = current_user.email
    end

    def update
        
    end

    def edit
        @farmer = Farmer.new
    end

    def delete

    end


    private

    def set_user
        @user = User.find(params[:id])
    end

    def farmer_params
        params.require(:farmer).permit(:first_name, :last_name, :farm_name, current_user.id)
    end
end
