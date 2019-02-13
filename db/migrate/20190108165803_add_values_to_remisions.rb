class AddValuesToRemisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :remisions, :clienteremi, foreign_key: true
  end
end
