class Checkatri < ApplicationRecord
  has_many :atrichecks

  accepts_nested_attributes_for :atrichecks,reject_if: :all_blank,allow_destroy: true


  def name
    "#{referencia} - #{descripcion}"
  end

  def self.to_csv(options ={})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |checkatri|
        csv << checkatri.attributes.values_at(*all_column_names)
      end
    end
  end

  def self.import(file)
    require 'roo'
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      product = find_by(id: row["id"]) || new
      product.attributes = row.to_hash
      product.save!

    end
  end

  def self.open_spreadsheet(file)
    require 'roo'
    case File.extname(file.original_filename)
    when ".csv" then Roo::CSV.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end


end
