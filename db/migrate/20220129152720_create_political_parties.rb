class CreatePoliticalParties < ActiveRecord::Migration[6.1]
  def change
    create_table :political_parties do |t|
      t.string :name

      t.timestamps
    end
  end
end
