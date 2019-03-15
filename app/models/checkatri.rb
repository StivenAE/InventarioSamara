class Checkatri < ApplicationRecord
  has_many :atrichecks

  accepts_nested_attributes_for :atrichecks,reject_if: :all_blank,allow_destroy: true


  def name
    "#{referencia} - #{descripcion}"
  end



end
