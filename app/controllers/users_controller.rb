class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @event = Event.find(params[:event_id])
    @group = Group.new({user: @user, event: @event})
    if @user.save && @group.save
      redirect_to @event, notice: 'イベントに参加しました'
    else
      redirect_to root
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname)
  end
end