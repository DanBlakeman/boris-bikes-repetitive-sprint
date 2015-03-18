require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it 'should releases a bike that is not broken' do
    docking_station = DockingStation.new
    docking_station.dock double(:bike, broken?: false)
    bike = docking_station.release_bike
    expect(bike).to respond_to(:broken?)
  end

  it 'will allow a object to be docked' do
    expect(subject.dock(:bike)).to eq :bike
  end

  it 'will raise an error if no bikes have been docked' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No Bikes Available'
  end
end
