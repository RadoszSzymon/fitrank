class AddAddressToGyms < ActiveRecord::Migration
  def change
    add_column :gyms, :address, :string
  end
end
