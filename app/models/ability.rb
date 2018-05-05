class Ability
  include CanCan::Ability
  def initialize(user)
    can :read, :all                 # allow everyone to read everything
    return unless user && user.admin?
    can :access, :rails_admin       # only allow admin users to access Rails Admin
    can :dashboard, :all            # allow access to dashboard
    if user.role? :Superadmin
      can :manage, :all   
    if user.role? :CoAdmin
      can :manage, :all             # allow superadmins to do anything
    elsif user.role? :Employee
      can :manage, [User, Product]  # allow managers to do anything to products and users
    elsif user.role? :Student
      can :update, Product, hidden: false  # allow sales to only update visible products
    end
  end
end
