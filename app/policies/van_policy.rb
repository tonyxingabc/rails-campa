class VanPolicy < ApplicationPolicy
  class Scope < Scope
    # Only for index
    def resolve
      scope.all
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  # Define policies here
  def edit?
    record.user == user
  end

  def destroy?
    record.user == user
  end

end
