class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      can [:create, :read], [Admin, Athlete, Coach]
      can :update, Athlete do |athlete|
        athlete.user == user
      end
      can :destroy, Athlete do |athlete|
        athlete.user == user
      end
      can :update, Coach do |coach|
        coach.user == user
      end
      can :destroy, Coach do |coach|
        coach.user == user
      end
    end
  end
end
