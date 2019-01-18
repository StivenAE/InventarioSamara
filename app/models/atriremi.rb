class Atriremi < ApplicationRecord
  belongs_to :remision

  def valor_total
   cantidad * valor_unitario
 end

end
