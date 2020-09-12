require 'csv_importer'

class Client < ApplicationRecord
  has_many :policies
end
