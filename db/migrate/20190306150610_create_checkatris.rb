class CreateCheckatris < ActiveRecord::Migration[5.2]
  def change
    create_table :checkatris do |t|
      t.string :referencia
      t.string :descripcion

      t.timestamps
    end
  end
end
