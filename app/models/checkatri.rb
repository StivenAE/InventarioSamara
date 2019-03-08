class Checkatri < ApplicationRecord
belongs_to :remision

  def product_order
    "#{referencia} #{descripcion}"
  end

end
