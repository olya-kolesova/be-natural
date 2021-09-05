class FarmsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
    before_action :set_farm, only: [:show, :edit, :update, :destroy]

  def index
    @farms = Farm.all
    @markers = @farms.geocoded.map do |farm|
      {
        lat: farm.latitude,
        lng: farm.longitude
        # image_url:
      }
    end
  end

  def show
    @product = Product.new
    @order_product = OrderProduct.new
    @categories = Category.all
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

    def edit; end

    def update
      @farm.user = current_user
      if @farm.save
        redirect_to farm_path(@farm)
      else
        render :edit
      end
    end

  def destroy
    @farm.user = current_user
    @farm.destroy
    redirect_to farms_path
  end

  private

  def set_farm
    @farm = Farm.find(params[:id])
  end

  def farm_params
    params.require(:farm).permit(:name, :location, :description, :photo)
  end
end
