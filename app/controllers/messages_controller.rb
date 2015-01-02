class MessagesController < ApplicationController
  before_action do
    redirect_to new_session_path unless current_user
  end

  def index
    @messages = Message.where(to: current_user).order(created_at: :desc)
    @message = Message.new
  end

  def create
    Message.create(message_params)
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message)
          .permit(:to, :subject, :body)
          .merge(from: current_user)
  end
end
