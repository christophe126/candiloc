class AddScoreToCandidate < ActiveRecord::Migration[6.1]
  def change
    add_column :candidates, :score, :integer
  end
end
