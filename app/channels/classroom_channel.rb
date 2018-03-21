class ClassroomChannel < ApplicationCable::Channel
  
  def subscribed
    stream_from "classroom_channel"
  end

  def start_listening(params)
    stream_for Room.find(params['classroom_id'])
  end

  def unsubscribed
  end
end

