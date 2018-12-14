class CreateClienteremis < ActiveRecord::Migration[5.2]
  def change
    create_table :clienteremis do |t|
      t.string :nombre
      t.string :apellidos
      t.string :empresa
      t.string :nit
      t.string :ciudad
      t.string :direccion
      t.string :telefono
      t.string :forma_pago
      t.string :pedido

      t.timestamps
    end
  end
end
