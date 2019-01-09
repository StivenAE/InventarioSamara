class AddValuesToRemisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :remisions,:clienteremi_id, :integer
    add_reference :remisions, :clienteremi, foreign_key: true
  end
end
