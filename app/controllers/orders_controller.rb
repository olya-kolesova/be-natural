class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @order_products = OrderProduct.where(order: @order).order(:created_at)
  end

  def checkout
    @order = Order.find(params[:id])
    line_items = @order.order_products.includes(:product).map do |order_product|
      product = order_product.product
      {
        name: product.name,
        amount: product.price_cents,
        quantity: order_product.quantity,
        currency: 'gbp'
      }
    end
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )
    @order.update checkout_session_id: session.id
    redirect_to new_order_payment_path(@order)
  end
end
