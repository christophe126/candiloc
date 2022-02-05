class AddAdressToCandidates < ActiveRecord::Migration[6.1]
  def change
    add_column :candidates, :address, :string
    add_column :candidates, :string, :string
  end
end
