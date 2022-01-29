class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.integer :price_per_day
      t.text :description
      t.references :political_party, null: false, foreign_key: true
      t.boolean :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
