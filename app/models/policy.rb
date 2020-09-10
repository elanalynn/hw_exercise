class Policy < ApplicationRecord
  require 'smarter_csv'
  validates :carrier_id, presence: true
  validates :effective_date, presence: true
  validates :expiration_date, presence: true
  validates :written_premium, presence: true
  validates :carrier_policy_number, presence: true

  belongs_to :carrier

  def self.import(file)
    SmarterCSV.process(file).each do |policy|
      @policy = Policy.new(policy)
      if @policy.save
        # TODO: Use Logger
        puts 'Created OK'
      else
        # TODO: Better handle errors
        puts @policy.errors
      end
    end
  end
end
