class AddCoordinatesToCandidates < ActiveRecord::Migration[6.1]
  def change
    add_column :candidates, :latitude, :float
    add_column :candidates, :longitude, :float
  end
end
