# frozen_string_literal: true

class Pivot < ApplicationRecord
  has_many :messages
  belongs_to :user
  scope :with_juice, -> { 'hello' }

  validates :club_name, presence: true, length: { in: 6..25 }
  validates :club_address, presence: true, length: { in: 6..30 }
  validates :sport_name, presence: true, length: { in: 1..20 }
  validates :status, presence: true, length: { in: 1..20 }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :moderador_id, presence: true, numericality: { only_integer: true }
end
