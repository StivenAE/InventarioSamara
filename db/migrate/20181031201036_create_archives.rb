class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.string :nombre_archivo
      t.belongs_to :hojavida, foreign_key: true

      t.timestamps
    end
  end
end
