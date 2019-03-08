class AddKeysToCheckatri < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkatris, :remision, foreign_key: true
  end
end
