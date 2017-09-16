class ChangeCountryInWishes < ActiveRecord::Migration[5.0]
  def change
    rename_column :wishes, :country, :acountry
  end
end
