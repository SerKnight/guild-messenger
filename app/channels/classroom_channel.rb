class ClassroomChannel < ApplicationCable::Channel
  
  def subscribed
    stream_from "classroom_channel"
  end

  def start_listening(params)
    stream_for Room.find(params['classroom_id'])
    # stop_all_streams
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

