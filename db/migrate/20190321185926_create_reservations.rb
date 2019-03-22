class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :guestNumber
      t.string :email
      t.datetime :datetime
      t.string :phone

      t.timestamps null: false
    end
  end
end
