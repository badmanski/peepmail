class MessagesController < ApplicationController
  before_action do
    redirect_to new_session_path unless current_user
  end

  def index
    @messages = Message.where(to: current_user)
    @message = Message.new(from: current_user)
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
