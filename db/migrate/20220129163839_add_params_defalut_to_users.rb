class AddParamsDefalutToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :candidates, :availability, false
  end
end
