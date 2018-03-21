class MessagesController < ApplicationController
  before_action :get_messages

  def index
  end

  def create
    message = current_user.messages.build(message_params)
    data = {}
    if message.save
      data[:html] = render partial: 'messages/message', locals: { message_content: message.content, sender_name: message.user.name}
      data[:classroom_id] = message_params['classroom_id']
      data[:sender_id] = message.user.id
      data[:current_user_id] = current_user.id

      ActionCable.server.broadcast "classroom_channel", data
    else
      render 'index'
    end
  end
 

  private

  def get_messages
    @messages = Message.recent
    @message = current_user.messages.build
  end

  def message_params
    params.require(:message).permit(:content, :classroom_id)
  end
end