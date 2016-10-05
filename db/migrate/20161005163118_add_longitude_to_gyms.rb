class AddLongitudeToGyms < ActiveRecord::Migration
  def change
    add_column :gyms, :longitude, :float
  end
end
