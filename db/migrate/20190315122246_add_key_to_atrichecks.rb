class AddKeyToAtrichecks < ActiveRecord::Migration[5.2]
  def change
    add_reference :atrichecks, :checkatri, foreign_key: true
  end
end
