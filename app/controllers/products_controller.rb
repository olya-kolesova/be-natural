class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @order_product = OrderProduct.new
  end

  def create
    @product = Product.new(product_params)
    @farm = Farm.find(params[:farm_id])
    @category = Category.find(params[:product][:category].to_i)
    @product.farm = @farm
    @product.category = @category
    if @product.save!
      redirect_to farm_path(@farm)
    else
      render 'farms/show'
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    # @farm = Product.find(params[:farm_id])
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to farm_path(@product.farm)

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo)
  end
end
