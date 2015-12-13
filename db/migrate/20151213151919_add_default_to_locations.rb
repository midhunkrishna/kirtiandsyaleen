class AddDefaultToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :default, :boolean, :default => false
  end
end
