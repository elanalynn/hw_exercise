require 'csv_importer'

class Carrier < ApplicationRecord
  has_many :policies

  def self.import(file)
    CsvImporter.import(file, self)
  end
end
