class ChangeCountryNameInWishes < ActiveRecord::Migration[5.0]
  def change
    rename_column :wishes, :acountry, :pays
  end
end
