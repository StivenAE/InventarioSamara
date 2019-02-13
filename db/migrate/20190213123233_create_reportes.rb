class CreateReportes < ActiveRecord::Migration[5.2]
  def change
    create_table :reportes do |t|
      t.string :equipo
      t.string :area_funcionamiento
      t.string :correo
      t.text :descripcion_problema
      t.date :fecha
      t.string :intervencion

      t.timestamps
    end
  end
end
