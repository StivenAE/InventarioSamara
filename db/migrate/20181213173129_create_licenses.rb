class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string :nombre
      t.string :serial
      t.date :fecha_vencimiento
      t.references :hojavida, foreign_key: true

      t.timestamps
    end
  end
end
