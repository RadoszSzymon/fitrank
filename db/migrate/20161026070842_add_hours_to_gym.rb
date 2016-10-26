class AddHoursToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :hours, :string
  end
end
