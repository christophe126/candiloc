class AddLogotoPoliticalParties < ActiveRecord::Migration[6.1]
  def change
    add_column :political_parties, :logo, :string
  end
end
