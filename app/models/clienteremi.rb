class Clienteremi < ApplicationRecord
validates_presence_of :nombre, :apellidos, :empresa, :nit, :ciudad, :direccion, :telefono, :forma_pago;

end
