module ApplicationHelper
  def deadline?(date)
    Time.now < date
  end
end
