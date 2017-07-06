RSpec.describe do "User clicks delete button"
  it "deletes individual weather condition" do
    date = Date.new(2013, 8, 29)
    Weather.create(date: date, max_temperature: 74.0, mean_temperature: 68.0, min_temperature: 61.0, mean_humidity: 75.0, mean_visibility: 10.0, mean_wind_speed: 11.0, precipitation: 1.0)

    visit('/conditions/1')

    click_link_or_button("delete")

    expect(current_path).to eq("/conditions")
  end
end
