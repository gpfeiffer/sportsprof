class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable and :omniauthable
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id
  # attr_accessible :title, :body

  has_many :roles
  belongs_to :role

  validate :role_must_belong_to_user

  def role_must_belong_to_user
    if !role_ids.include?(role_id)
      errors.add(:role_id, "must belong to user")
    end
  end

  def role? symbol
    false
  end
end
