class Remision < ApplicationRecord
  has_many :atriremis, :dependent => :destroy
  has_many :clienteremis
  accepts_nested_attributes_for :atriremis,reject_if: :all_blank,allow_destroy: true


end
