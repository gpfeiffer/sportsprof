class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.role? :admin
      can :manage, :all
    else
      can :create, Athlete do |athlete|
      end
      can :read, Athlete do |athlete|
      end
      can :update, Athlete do |athlete|
        athlete.user == user
      end
      can :destroy, Athlete do |athlete|
        athlete.user == user
      end
    end
  end
end
