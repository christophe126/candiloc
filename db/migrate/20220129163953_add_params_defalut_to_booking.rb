class AddParamsDefalutToBooking < ActiveRecord::Migration[6.1]
  def change
    change_column_default :bookings, :status, false
  end
end
