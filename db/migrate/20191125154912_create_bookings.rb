class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :service, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :accepted
      t.boolean :completed

      t.timestamps
    end
  end
end
