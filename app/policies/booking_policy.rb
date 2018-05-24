class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

    def edit?
      raise
    end

    def update?
      true
    end

    def destroy?
      true
    end
  end
end
