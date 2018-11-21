class Hojavida < ApplicationRecord
  has_many :componentes, :dependent => :destroy
  has_many :archives, :dependent => :destroy
  has_many :permisos, :dependent => :destroy



    def self.search(search)
      if search
        where( 'nombre LIKE ?', "%#{search}%")
      else
        all
      end
    end


  def self.to_xls
  end
  def self.to_csv(options ={})
    CSV.generate(options) do |csv|
        csv << column_names
        all.each do |hojavida|
          csv << hojavida.attributes.values_at(*column_names)
        end
    end
  end

  validates_presence_of :nombre, :tipo, :marca, :modelo, :serial, :area_funcionamiento,:fecha_compra, :garantia, :proveedor, :pieza;
  accepts_nested_attributes_for :componentes,reject_if: :all_blank,allow_destroy: true
    accepts_nested_attributes_for :archives,reject_if: :all_blank,allow_destroy: true
      accepts_nested_attributes_for :permisos,reject_if: :all_blank,allow_destroy: true




end
