class CreateComponentes < ActiveRecord::Migration[5.2]
  def change
    create_table :componentes do |t|
      t.string :nombre_componente
      t.string :serial
      t.belongs_to :hojavida, foreign_key: true

      t.timestamps
    end
  end
end
