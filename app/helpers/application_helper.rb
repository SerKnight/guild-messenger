module ApplicationHelper
  def format_time(time)
    time_ago_in_words(time)
  end


  def user_name
    if self.user
      self.user.name
    else
      '[deleted]'
    end
  end
end
