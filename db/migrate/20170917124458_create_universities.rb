class CreateUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :city
      t.string :pays
      t.string :photo

      t.timestamps
    end
  end
end
