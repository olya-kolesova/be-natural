if @order_product.persisted?
  json.form json.partial!('order_products/form2.html.erb', product: @product, order_product: OrderProduct.find(params[:id]))
  # json.inserted_item json.partial!('farm/order_product.html.erb', order_product: @order_product)
else
  json.form json.partial!('order_products/form2.html.erb', product: @product, order_product: @order_product)
end
