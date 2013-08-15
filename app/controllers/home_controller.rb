class HomeController < ApplicationController
  def index
    @json = Event.all.to_gmaps4rails
    @polyjson = []
    points = []
    Event.all.each do |l|
      points << {:lng => l.longitude, :lat => l.latitude}
    end
    @polyjson = [points].to_json
 end
end
