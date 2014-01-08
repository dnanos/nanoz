class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
      cannot :read, User
      can :create, Comment
      can :read, Comment
      if user.role? :moderator
        can :update, Comment
	can :destroy, Comment
      end
    end
  end
end
