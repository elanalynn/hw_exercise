# frozen_string_literal: true

class Carrier < ApplicationRecord
  has_many :policies
end
