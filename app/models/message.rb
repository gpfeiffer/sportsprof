class Message < ActiveRecord::Base
  attr_accessible :body, :receiver_id, :sender_id, :subject

  belongs_to :sender, :class_name => 'Role'
  belongs_to :receiver, :class_name => 'Role'
end
