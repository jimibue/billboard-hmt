class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.integer :rank
      t.belongs_to :song, null: false, foreign_key: true
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
