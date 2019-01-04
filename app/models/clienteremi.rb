class Clienteremi < ApplicationRecord
  belongs_to :remision
    validates_presence_of :nombre, :apellidos, :empresa, :nit, :ciudad, :direccion, :telefono, :forma_pago;


      def client_order
        "#{nombre.first}. #{apellidos}. #{empresa}"
      end
end
