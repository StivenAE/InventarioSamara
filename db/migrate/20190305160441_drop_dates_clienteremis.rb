class DropDatesClienteremis < ActiveRecord::Migration[5.2]
  def change
    remove_column :clienteremis, :forma_pago, :string
    remove_column :clienteremis, :pedido, :string
  end
end
