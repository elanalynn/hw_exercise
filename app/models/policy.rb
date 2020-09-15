

class Policy < ApplicationRecord
  EXCLUDED_POLICY_TYPES = %w(
    A/R Workers Compensation
    Cobra
    Employee Benefit Liab.
    Excess Workers Compensati
    Group Life (No AD&D)
    Group Life/AD & D
    Group Long Term Disabilit
    Group Short Term Disabili
    Group Vision
    Vol. Long Term Disability
    Voluntary Dental
    Voluntary Life (No AD&D)
    Voluntary Life/AD & D
    Voluntary Vision
    Workers Compensation
  )

  validates :carrier_id, presence: true
  validates :effective_date, presence: true
  validates :expiration_date, presence: true
  validates :written_premium, presence: true
  validates :carrier_policy_number, presence: true

  belongs_to :carrier
  belongs_to :client

  scope :complete?, -> { where(complete: true) }
  scope :incomplete?, -> { where(complete: nil) }
  scope :p_and_c, -> { where.not(policy_type: EXCLUDED_POLICY_TYPES) }
end
