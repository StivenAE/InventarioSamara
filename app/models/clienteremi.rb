class Clienteremi < ApplicationRecord
  has_many :remisions
    validates_presence_of :nombre, :apellidos, :empresa, :nit, :ciudad, :direccion, :telefono;


      def client_order
        "#{nombre}#{apellidos}. #{empresa}"
      end
end
