class HomeController < ApplicationController
  def index
    @events = Event.all.order(created_at: :desc).limit(5)
  end
end