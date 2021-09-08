class RemovePriceFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :price, :float
  end
end
