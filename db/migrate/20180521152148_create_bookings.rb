class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :van, foreign_key: true
      t.string :status
      t.integer :cost
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
