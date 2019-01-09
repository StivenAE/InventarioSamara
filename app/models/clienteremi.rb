class Clienteremi < ApplicationRecord
  has_many :remisions
    validates_presence_of :nombre, :apellidos, :empresa, :nit, :ciudad, :direccion, :telefono, :forma_pago;


      def client_order
        "#{nombre.first}. #{apellidos}. #{empresa}"
      end
end
