class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :owner
      t.string :fb_page
      t.string :tw_page
      t.string :ins_page
      t.string :website

      t.timestamps null: false
    end
  end
end
