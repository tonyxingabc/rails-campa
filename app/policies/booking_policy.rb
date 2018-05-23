class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

    def edit?
      record.user == user
    end

    def update?
      edit?
    end

    def destroy?
      record.user == user
    end
  end
end
