class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: 'イベントが作られました。'
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @group = Group.where(event_id: @event)
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :max_participants, :max_group_size, :open_date, :deadline)
  end
end