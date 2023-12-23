class HomeController < ApplicationController
  def index
    @events = Event.all.limit(5)
  end
end