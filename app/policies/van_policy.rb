class VanPolicy < ApplicationPolicy
  class Scope < Scope
    # Only for index
    def resolve
      scope.all
    end
  end

  # Define policies here
  def edit?
    record.user == user
  end

  def update?
    true
  end

  def destroy?
    record.user == user
  end

end
