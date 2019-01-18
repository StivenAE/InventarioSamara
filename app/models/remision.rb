class Remision < ApplicationRecord
  has_many :atriremis, :dependent => :destroy
  belongs_to :clienteremi
  accepts_nested_attributes_for :atriremis,reject_if: :all_blank,allow_destroy: true

  def valor_bruto
    atriremis.reduce(0) { |suma, atriremi| suma += atriremi.valor_total }
  end

  def subtotal
    valor_bruto - descuento
  end

  def iva
   (subtotal * 19) / 100
  end
  def total
    iva + subtotal
  end
end
