class Role < ActiveRecord::Base
  attr_accessible :profile_id, :profile_type, :user_id

  belongs_to :user
  belongs_to :profile, :polymorphic => true

  has_many :messages, :foreign_key => :receiver_id

  def name
    "#{profile.name} (#{profile_type})"
  end

  def to_s
    name
  end
end
