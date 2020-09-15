# frozen_string_literal: true

class PolicyFile < ApplicationRecord
  has_one_attached :data
end
