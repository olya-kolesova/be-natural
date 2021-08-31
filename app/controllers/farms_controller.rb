class FarmsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
    before_action :set_farm, only: [:show]

  def index
    @farms = Farm.all
  end

  def show
  end

  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new(farm_params)
    @farm.user = current_user
    if @farm.save!
      redirect_to farm_path(@farm)
    else
      render :new
    end
  end

  private

  def set_farm
    @farm = Farm.find(params[:id])
  end

  def farm_params
    params.require(:farm).permit(:name, :location, :description)
  end
end
