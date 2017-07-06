RSpec.describe "User clicks date button" do
  it "on conditions page" do
    date = Date.new(2013, 8, 29)
    Weather.create(date: date, max_temperature: 74.0, mean_temperature: 68.0, min_temperature: 61.0, mean_humidity: 75.0, mean_visibility: 10.0, mean_wind_speed: 11.0, precipitation: 1.0)
    visit('/conditions')

    click_link("2013-08-29")

    expect(page).to have_content("max temperature")
  end
end
