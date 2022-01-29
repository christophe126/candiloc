class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :candidate, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :total_price
      t.boolean :status

      t.timestamps
    end
  end
end
