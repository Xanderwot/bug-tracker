class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user
    send(@user.role) if @user
  end

  def admin
    can :manage, Department
    can :manage, User
    can :manage, Project
    can :manage, Tt
    #Admin panel ability
    can :access, :rails_admin
    can :dashboard
  end

  def user

  end
end