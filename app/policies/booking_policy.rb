class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def edit?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

end
