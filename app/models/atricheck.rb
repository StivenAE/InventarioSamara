class Atricheck < ApplicationRecord
  belongs_to :remision
  has_many :checkatris
  accepts_nested_attributes_for :checkatris,reject_if: :all_blank,allow_destroy: true


end
