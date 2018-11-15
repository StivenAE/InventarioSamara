class CreateHojavidas < ActiveRecord::Migration[5.2]
  def change
    create_table :hojavidas do |t|
      t.string :nombre
      t.string :tipo
      t.string :marca
      t.string :modelo
      t.string :serial
      t.string :area_funcionamiento
      t.text :descripcion
      t.text :precauciones
      t.date :fecha_compra
      t.date :garantia
      t.string :proveedor
      t.string :pieza

      t.timestamps
    end
  end
end
