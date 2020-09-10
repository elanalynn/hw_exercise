class Policy < ApplicationRecord
  validates :carrier_id, presence: true
  validates :effective_date, presence: true
  validates :expiration_date, presence: true
  validates :written_premium, presence: true
  validates :carrier_policy_number, presence: true

  belongs_to :carrier

  def self.import(file)
    CsvImporter.import(file, self)
  end
end
