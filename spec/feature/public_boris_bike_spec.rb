# As a member of the public,
# So that I can get across town,
# I'd like a docking station to release a bike that is not broken.
require 'capybara/rspec'
require 'docking_station'

feature 'User can get a none broken bike' do
  scenario 'DockingStation releases a none broken bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
end
