class Role < ActiveRecord::Base
  attr_accessible :profile_id, :profile_type, :user_id

  belongs_to :user
  belongs_to :profile, :polymorphic => true
end
