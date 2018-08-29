class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
=begin
    user ||= User.new
    if user.admin?
      can :access, :rails_admin
      can :read, :dashboard
      can :index, :all
      can :manage, Book
      can [:create, :edit, :destroy], [Author, Category]
      can [:edit], [Order]
    else
      can :read, :all
    end
=end

    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
