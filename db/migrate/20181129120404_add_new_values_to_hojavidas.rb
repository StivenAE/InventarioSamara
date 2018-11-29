class AddNewValuesToHojavidas < ActiveRecord::Migration[5.2]
  def change
    add_column :hojavidas, :precio, :string
  end
end
