class OrderProductsController < ApplicationController
  def index
    @order_products = OrderProduct.all
  end

  def create
    @order = Order.where(user: current_user, state: ['pending', nil]).order(:created_at).last || Order.create(user: current_user, state: 'pending')
    @product = Product.find(params[:product_id])
    # if clicked => quanity += 1
    @order_product = OrderProduct.create!(order: @order, product: @product, quantity: order_product_params[:quantity])
    respond_to do |format|
      if @order_product
        format.html { redirect_to request.referrer }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render 'farms/show' }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end
  # def create
    # @order = Order.find_by(user: current_user)
    # @product = Product.find(params[:product_id])
  #   # if clicked => quanity += 1
  #   @order_product = OrderProduct.create!(order: @order, product: @product, amount: product.price, state: 'pending', quantity: order_product_params[:quantity])
  #   session = Stripe::Checkout::Session.create(
  #   payment_method_types: ['card'],
  #   order.order_products.each do |order_product|
  #     line_items: [{
  #       name: product.name,
  #       images: [product.photo_url],
  #       amount: product.price_cents,
  #       currency: 'gbp',
  #       quantity: 1
  #     }],
  #     end
  #     success_url: order_products_url(order),
  #     cancel_url: order_products_url(order)
  #     )

    # respond_to do |format|
    #   if @order_product
    #     format.html { redirect_to request.referrer }
    #     format.json # Follow the classic Rails flow and look for a create.json view
    #   else
    #     format.html { render 'farms/show' }
    #     format.json # Follow the classic Rails flow and look for a create.json view
    #   end
    # end

  # def create
  # @product = Product.find(params[:product_id])
  # @order = Order.create!(product: product, amount: product.price, state: 'pending', user: current_user)


  #   success_url: order_url(order),
  #   cancel_url: order_url(order)
  # )

  # order.update(checkout_session_id: session.id)
  # redirect_to new_order_payment_path(order)
  # end
  #     # redirect_to request.referrer
  # end

  def increase_quantity
    @order = Order.find_by(user: current_user)
    @order_product = OrderProduct.find(params[:id])
    @order_product.update(quantity: @order_product.quantity + 1)
    redirect_to request.referrer
  end

  def decrease_quantity
    @order = Order.find_by(user: current_user)
    @order_product = OrderProduct.find(params[:id])
    @order_product.update(quantity: @order_product.quantity - 1)
    redirect_to request.referrer
  end

  def destroy
    @order = Order.find_by(user: current_user)
    @order_product = OrderProduct.find(params[:id])
    @order_product.destroy
    redirect_to order_path(@order)
  end


  private

  def order_product_params
    params.require(:order_product).permit(:quantity)
  end
end
