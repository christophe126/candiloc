class AddSlogantoPoliticalParties < ActiveRecord::Migration[6.1]
  def change
    add_column :political_parties, :slogan, :string
  end
end
