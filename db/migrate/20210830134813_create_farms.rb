class CreateFarms < ActiveRecord::Migration[6.0]
  def change
    create_table :farms do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
