require 'docking_station'

describe DockingStation do
  # it 'responds to #release_bike' do
  #   expect(subject).to respond_to(:release_bike)
  # end
  it { is_expected.to respond_to(:release_bike) }

  it 'should releases a bike that is not broken' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to(:broken?)
  end
end
