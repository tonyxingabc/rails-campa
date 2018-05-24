class VanPolicy < ApplicationPolicy
  class Scope < Scope
    # Only for index
    def resolve
      scope.all
    end
  end

  # Define policies here
  def edit?
    true
  end

  def update?
    true
  end

  def destroy?
    # record.user == user
    true
  end

end
