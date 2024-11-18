class CreateBasicLotto < ActiveRecord::Migration[6.1]
  def change
    create_table :basic_lottos do |t|
      t.timestamps
    end
  end
end
