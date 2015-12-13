class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :heading
      t.text :address
      t.string :image_one
      t.string :function_from_and_to
      t.text :description

      t.timestamps null: false
    end
  end
end
