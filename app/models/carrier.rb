require 'csv_importer'

class Carrier < ApplicationRecord
  has_many :policies
end
