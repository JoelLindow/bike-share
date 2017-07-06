RSpec.describe "User visits '/stations/1'" do

  before :each do
    Station.create(dock_count: 30, city_id: 2, installation_date: "3/4/15")
    Trip.create(start_station_id: 1, end_station_id: 1, bike_id: 48, zip_code: 94103, subscription_id: 1, start_date: "2013-08-29 14:13:00", end_date: "2013-08-29 14:14:00")
  end

  it "and sees dock count" do
    visit('/stations/1')

    save_and_open_page

    expect(page).to have_content("dock count: 30")
  end

  it "and sees installation date" do
    visit('/stations/1')

    save_and_open_page

    expect(page).to have_content("installation date: 3/4/15")
  end

  it "and sees city id" do
    visit('/stations/1')

    save_and_open_page

    expect(page).to have_content("city id: 2")
  end

  it "and sees number of starting rides at station" do
    visit('/stations/1')

    save_and_open_page

    expect(page).to have_content("Number of rides started at this station: 1")
  end
end
