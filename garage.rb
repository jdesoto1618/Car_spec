# require 'car' #Searches for .rb files only. Want to bring in the parent class with each car added
class Garage
  def initialize
    @gar = []
  end

  def add_car (car)
    @gar = @gar.push(car)
  end

  def get_cars
    @gar
  end

  def sort_year
    @gar.sort_by { |a| a.year }
  end

  def sort_model
    @gar.sort_by { |b| b.model }
end
