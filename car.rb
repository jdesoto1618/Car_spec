# Process
#
# Before starting the implementaion, copy each story into the editor as a comment, and use the function receipe to guide the implementation of each method.
# Keep each class in it's own file with it's own test file.


# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.

class Car
  def initialize(wheels=4, year=1900, lights = "off", signal="off", speed = 0)
    @wheels = wheels
    @year = year
    @lights = lights
    @signal = signal
    @speed = speed
  end

  def wheels
    @wheels
  end

  def year
    @year
  end

  def horn
    @horn = "BEEP!"
  end

  def lights (lights) #set lights
    @lights = lights
  end

  def l_state
    @lights
  end

  def signal (signal) #set the signal state as left, right, or off
    @signal = signal
  end

  def get_speed
    @speed
  end

  def info
    "#{@wheels} wheels, #{@year} model, horn goes #{@horn}, lights are #{@lights}, signal is #{@signal}, speed is #{@speed}."
  end
end #end Car class

class Toyota < Car
  def init
    super
    @model = "Toyota"
  end

  def horn
    "whoop"
  end
  def acc
    @speed += 7
  end

  def dec
    @speed -= 5
  end
end

class Tata < Car
  def init
    super
  end

  def horn
    "beep"
  end # def

  def acc
    @speed += 2
  end

  def dec
    @speed -= 1.25
  end
end #end Tata

class Tesla < Car
  def init
    super
  end

  def horn
    "Beep-bee-bee-boop-bee-doo-weep"
  end #end def

  def acc
    @speed += 10
  end

  def dec
    @speed -=7
  end
end #end Tesla
