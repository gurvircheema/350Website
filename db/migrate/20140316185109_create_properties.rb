class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.decimal :price
      t.integer :bedrooms
      t.decimal :bathrooms
      t.text :description

      t.timestamps
    end
  end
end
