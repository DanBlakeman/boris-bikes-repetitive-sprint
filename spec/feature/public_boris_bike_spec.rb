# As a maintainer of the system,
# So that members of the public are not disappointed,
# I'd like docking stations to not release bikes when there are none available.
require 'capybara/rspec'
require 'docking_station'

feature 'User can get a none broken bike' do
  scenario 'DockingStation releases a none broken bike' do
    docking_station = DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
  scenario 'DockingStation does not release bikes when none are available' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No Bikes Available'
  end
end
