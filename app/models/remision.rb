class Remision < ApplicationRecord
  has_many :atriremis, :dependent => :destroy
  has_many :atrichecks, :dependent => :destroy

  belongs_to :clienteremi
  accepts_nested_attributes_for :atriremis,reject_if: :all_blank,allow_destroy: true
  accepts_nested_attributes_for :atrichecks,reject_if: :all_blank,allow_destroy: true

  def self.to_csv(options ={})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |remision|
        csv << remision.attributes.values_at(*all_column_names)
      end
    end
  end

end
