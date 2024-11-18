class Roll < ApplicationRecord
  # Associations
  belongs_to :basic_lotto

  # Validations
  validates :value, presence: true
  validates :value, numericality: { greater_than_or_equal_to: 1 }
  validates :value, numericality: { less_than_or_equal_to: 49 }

  # self.generate creates instance of the Roll Model which isn't saved to the database
  def self.generate range
    roll = Roll.new
    roll.value = range.sample
    roll.save
    roll
  end
end