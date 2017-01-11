class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.float :longitude
      t.float :latitude
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
