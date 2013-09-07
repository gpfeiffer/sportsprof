class Athlete < ActiveRecord::Base
  attr_accessible :date_of_birth, :first_name, :gender, :last_name

  has_one :role, :as => :profile, :dependent => :destroy

  GENDERS = %w{ F M }

  validates :gender, :inclusion => GENDERS
end
