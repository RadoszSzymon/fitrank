class AddLatitudeToGyms < ActiveRecord::Migration
  def change
    add_column :gyms, :latitude, :float
  end
end
