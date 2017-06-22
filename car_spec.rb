require 'rspec'  #searches the gem file path and grabs it.
require_relative 'car' #gets the car, which is within the same folder. ( use require 'car' if its in a different folder)


describe Car do
  it "can make a new car" do
    expect{Car.new}.to_not raise_error
  end
  it "has four wheels" do
    expect(Car.new.wheels).to be(4)
  end
  it "can honk the horn if instructed to" do
    expect(Car.new.horn).to eq("BEEP!")
  end
  it "can create a Toyota car" do
    expect{Toyota.new}.to_not raise_error
  end
  it "can honk the horn of the Toyota car which makes the sound whoop" do
    expect(Toyota.new.horn).to eq("whoop")
  end
  it "can make a Tata" do
    expect{Tata.new}.to_not raise_error
  end
  it "can honk the Tata horn and make a beep" do
    expect(Tata.new.horn).to eq("beep")
  end
  it "can make a Tesla" do
      car_tesla = Tesla.new
      expect{car_tesla}.to_not raise_error
  end
  it "can honk the Tesla horn and make it go Beep-bee-bee-boop-bee-doo-weep" do
      car_tesla = Tesla.new
      expect(car_tesla.horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end
  it "has a model year" do
    expect(Tesla.new.year).to be_an(Integer)
  end
  it "can turn lights on and off" do
    expect(Car.new.lights("on")).to eq("on")
    expect(Car.new.lights("off")).to eq("off")
  end
  it "can determine if lights are on or off" do
    expect(Car.new.l_state).to eq("off")
    car1 = Tata.new
    car1.lights("on")
    expect(car1.l_state).to eq("on")
    expect(Car.new.l_state).to be_a(String)
  end
  it "can signal left or right, starts off" do
    expect(Car.new.signal("off")).to eq("off")
    expect(Car.new.signal("left")).to eq("left")
    expect(Car.new.signal("right")).to eq("right")
  end
  it "can determine the speed of the car" do
    expect(Car.new.get_speed).to be_an(Integer)
  end
  it "can speed up a Tesla by 10" do
    expect(Tesla.new.acc).to be(10)
    car2 = Tesla.new
    expect(car2.acc).to be(10)
    expect(car2.acc).to be(20)
  end
  it "can slow down a Tesla by 7" do
    car2 = Tesla.new
    car2.acc #get to 10 mph
    expect(car2.dec).to be(3)
  end
  it "can speed up a Tata by 2" do
    expect(Tata.new.acc).to be(2)
    car2 = Tata.new
    expect(car2.acc).to be(2)
    expect(car2.acc).to be(4)
  end
  it "can slow down a Tata by 1.25" do
    car2 = Tata.new
    car2.acc #get to 2 mph
    car2.acc #get to 4 mph
    expect(car2.dec).to be(2.75)
  end
  it "can speed up a Toyota by 7" do
    expect(Toyota.new.acc).to be(7)
    car2 = Toyota.new
    expect(car2.acc).to be(7)
    expect(car2.acc).to be(14)
  end
  it "can slow down a Toyota by 5" do
    car2 = Toyota.new
    car2.acc #get to 7 mph
    car2.acc #get to 14 mph
    expect(car2.dec).to be(9)
  end
  it "can tell me all it's information if called up to do so" do
    car2 = Toyota.new
    expect(car2.info).to be_a(String)
  end

end
