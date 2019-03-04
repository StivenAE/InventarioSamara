class DropDatesRemisions < ActiveRecord::Migration[5.2]
  def change
    remove_column :remisions, :fecha_vencimiento, :date
    remove_column :remisions, :valor_bruto, :date
    remove_column :remisions, :descuento, :date
    remove_column :remisions, :subtotal, :date
    remove_column :remisions, :iva, :date
    remove_column :remisions, :total, :date
  end
end
