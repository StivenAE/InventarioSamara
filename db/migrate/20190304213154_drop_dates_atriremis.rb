class DropDatesAtriremis < ActiveRecord::Migration[5.2]
  def change
    remove_column :atriremis, :iva, :integer
    remove_column :atriremis, :valor_unitario, :integer
    remove_column :atriremis, :valor_total, :integer
  end
end
