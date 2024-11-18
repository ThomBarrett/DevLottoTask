class CreateRolls < ActiveRecord::Migration[6.1]
  def change
    create_table :rolls do |t|
      t.integer :value, null: false
      t.timestamps
    end
  end
end
