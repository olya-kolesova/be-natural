class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    @farm = Farm.find(params[:farm_id])
    @product.farm = @farm
    if @product.save
      redirect_to products_path
    else
      render 'farms/:id'
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :farm_id)
  end
end
