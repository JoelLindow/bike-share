class AddZipCodeToWeather < ActiveRecord::Migration[5.1]
  def change
    add_column :weathers, :zip_code, :bigint
  end
end
