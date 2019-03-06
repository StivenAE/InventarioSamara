class Checkatri < ApplicationRecord
  has_many :atrichecks

  def product_order
    "#{referencia} #{descripcion}"
  end

end
