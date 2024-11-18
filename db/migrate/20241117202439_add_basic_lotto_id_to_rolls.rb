class AddBasicLottoIdToRolls < ActiveRecord::Migration[6.1]
  def change
    add_reference :rolls, :basic_lotto, null: false, foreign_key: true
  end
end
