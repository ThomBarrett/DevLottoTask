
class BasicLotto < ApplicationRecord
  # Associations
  has_many :rolls, dependent: :destroy

  def self.generate(roll_count=6, range=(1..49).to_a)
    basic_lotto = BasicLotto.new
    for a in 1..roll_count do
      basic_lotto.rolls << Roll.generate(range)
      range.delete(basic_lotto.rolls.last.value)
    end
    basic_lotto.save
  end

  def ordered_rolls_values
    rolls.order(:value).pluck(:value)
  end


end
