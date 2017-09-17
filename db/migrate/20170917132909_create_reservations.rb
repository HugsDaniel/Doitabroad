class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string      :status, default: "pending"
      t.integer     :price, default: 200

      t.references  :user, foreign_key: true
      t.references  :university, foreign_key: true

      t.timestamps
    end
  end
end
