class FarmersController < ApplicationController
  before_action :set_user, only: [:update, :show, :destroy, :edit]

  def index
    @id = current_user.id
    @farmer = Farmer.all
    
  end

  def show
    @profile = current_user.email
  end

  def update
    
  end

  def edit
    @farmer = Farmer.new
  end

  def delete; end

  def create
    @info = farmer_params
    Farmer.new(first_name: @info['first_name'], last_name: @info['last_name'],
               farm_name: @info['farm_name'], user_id: current_user.id)

    
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def farmer_params
    params.require(:farmer).permit(:first_name, :last_name, :farm_name, current_user.id)
  end
end
