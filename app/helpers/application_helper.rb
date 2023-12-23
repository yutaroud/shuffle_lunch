module ApplicationHelper
  def deadline?(date)
    DateTime.now < date
  end
end
