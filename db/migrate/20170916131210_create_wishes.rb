class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.string :country
      t.string :course

      t.timestamps
    end
  end
end
