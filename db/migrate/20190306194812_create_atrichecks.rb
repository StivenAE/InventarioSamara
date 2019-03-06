class CreateAtrichecks < ActiveRecord::Migration[5.2]
  def change
    create_table :atrichecks do |t|
      t.string :lote
      t.integer :cantidad
      t.string :unidad
      t.belongs_to :remision, foreign_key: true

      t.timestamps
    end
  end
end
