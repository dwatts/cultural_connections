class ActivityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def my_activities?
    true
  end

  def create?
    user.provider
  end

  def update?
    record.provider == user
  end
end
