class AddValuesToRemisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :remisions,:client_parms, :string
    add_column :remisions,:clienteremi_id, :integer
  end
end
