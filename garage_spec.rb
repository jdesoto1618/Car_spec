
require 'rspec'  #searches the gem file path and grabs it.
require_relative 'garage'
require_relative 'car'


describe Garage do
  it "Can retrieve all cars in a garage(array) of cars" do
    gar = Garage.new
    car1 = Tesla.new
    expect(gar.add_car(car1)).to be_an(Array)
    expect(gar.get_cars).to be_an(Array)
    expect{gar.add_car(car1)}.to change{gar.get_cars}
  end
  it "can sort the cars in my garage based on model year." do
    car1 = Tesla.new(4, 1990)
    car2 = Tesla.new(4, 1980)
    gar = Garage.new
    gar.add_car(car1)
    gar.add_car(car2)
    expect(gar.sort_year).to eq([car2, car1])
  end

  it "can sort by model type" do
    car1 = Tesla.new(4, 1990)
    car2 = Tata.new(4, 2017)
    car3 = Toyota.new(4, 1996)
    gar = Garage.new
    gar.add_car(car1)
    gar.add_car(car2)
    gar.add_car(car3)
    expect(gar.sort_model).to eq([car2, car1, car3])
end


# Story: As a programmer, I can sort the cars in my garage based on model.
# Hint: Sort based on class name.
