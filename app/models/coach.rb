class Coach < ActiveRecord::Base
  attr_accessible :description, :first_name, :gender, :last_name

  has_one :role, :as => :profile, :dependent => :destroy

  GENDERS = %w{ F M X }

  validates :first_name, :last_name, :presence => true
  validates :gender, :inclusion => GENDERS

  def user
    role.user
  end

  def name
    "#{first_name} #{last_name}"
  end

  def to_s
    name
  end
end
