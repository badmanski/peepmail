class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    message = Message.create(message_params)
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:from, :to, :subject, :body)
  end
end
