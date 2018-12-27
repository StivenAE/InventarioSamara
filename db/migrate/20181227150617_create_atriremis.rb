class CreateAtriremis < ActiveRecord::Migration[5.2]
  def change
    create_table :atriremis do |t|
      t.string :referencia
      t.string :descripcion
      t.string :lote
      t.integer :iva
      t.integer :cantidad
      t.string :unidad
      t.integer :valor_unitario
      t.integer :valor_total
      t.belongs_to :remision, foreign_key: true

      t.timestamps
    end
  end
end
