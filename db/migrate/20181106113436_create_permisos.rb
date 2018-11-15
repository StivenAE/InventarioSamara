class CreatePermisos < ActiveRecord::Migration[5.2]
  def change
    create_table :permisos do |t|
      t.string :nombre
      t.string :serial
      t.date :fecha_vencimiento
      t.belongs_to :hojavida, foreign_key: true

      t.timestamps
    end
  end
end
