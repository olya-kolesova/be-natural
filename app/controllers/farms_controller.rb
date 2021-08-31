class FarmsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
    before_action :set_farm, only: [:show]
  
  def index
    @farm = Farm.all
  end

  def show; end

  private

  def set_farm
    @farm = Farm.find(params[:farm_id])
  end
end
