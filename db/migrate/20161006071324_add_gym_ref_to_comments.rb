class AddGymRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :gym, index: true, foreign_key: true
  end
end
