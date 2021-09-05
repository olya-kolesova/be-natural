class AddCoordinatesToFarms < ActiveRecord::Migration[6.0]
  def change
    add_column :farms, :latitude, :float
    add_column :farms, :longitude, :float
  end
end
