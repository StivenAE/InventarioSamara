class AddKeyToCheckatri < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkatris, :atricheck, foreign_key: true
  end
end
