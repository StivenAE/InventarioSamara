class CreateRemisions < ActiveRecord::Migration[5.2]
  def change
    create_table :remisions do |t|
      t.date :fecha_expedicion
      t.date :fecha_vencimiento
      t.text :nota
      t.integer :valor_bruto
      t.integer :descuento
      t.integer :subtotal
      t.integer :iva
      t.integer :total

      t.timestamps
    end
  end
end
