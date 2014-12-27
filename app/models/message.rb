class Message < ActiveRecord::Base
  validates :from, :to, :subject, :body, presence: true
  validates :body, length: { minimum: 2000 }
end
