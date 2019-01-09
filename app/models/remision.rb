class Remision < ApplicationRecord
  has_many :atriremis, :dependent => :destroy
  belongs_to :clienteremi
  accepts_nested_attributes_for :atriremis,reject_if: :all_blank,allow_destroy: true


end
