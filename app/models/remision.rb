class Remision < ApplicationRecord
  has_many :atriremis, :dependent => :destroy
  has_many :atrichecks, :dependent => :destroy

  belongs_to :clienteremi
  accepts_nested_attributes_for :atriremis,reject_if: :all_blank,allow_destroy: true
  accepts_nested_attributes_for :atrichecks,reject_if: :all_blank,allow_destroy: true



end
