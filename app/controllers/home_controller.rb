class HomeController < ApplicationController
  def index
    @home = Event.all
    @event = @home.last#.to_gmaps4rails
    @json = @event.to_gmaps4rails do |event, marker|
          marker.infowindow event.name
          end
  end
end
