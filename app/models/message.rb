class Message < ActiveRecord::Base
  attr_accessible :body, :receiver_id, :sender_id, :subject
end
