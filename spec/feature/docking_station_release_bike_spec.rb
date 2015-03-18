# I'd like a docking station to release a bike that is not broken.

describe DockingStation do
  a = DockingStation.new
  bike = DockingStation.release_bike

  expect(subject).to respond_to(:release_bike)
  expect(bike).not_to be_broken
end