class Message < ActiveRecord::Base
  validates :from, :to, :subject, :body, presence: true
end
