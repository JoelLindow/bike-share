RSpec.describe "User clicks edit button" do
  it "on show page" do
    date = Date.new(2013, 8, 29)
    Weather.create(date: date, max_temperature: 74.0, mean_temperature: 68.0, min_temperature: 61.0, mean_humidity: 75.0, mean_visibility: 10.0, mean_wind_speed: 11.0, precipitation: 1.0)

    visit('/conditions/1')
    save_and_open_page

    click_link_or_button("edit")

    expect(current_path).to eq("/conditions/1/edit")
  end
end
