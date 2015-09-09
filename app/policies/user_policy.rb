class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.administrator?
        scope.all
      else
        scope.where(id: user.id)
      end
    end
  end
  def permitted_attributes
    if user.administrator?
      [:email, :first_name, :last_name, :role]
    else
      [:email, :first_name, :last_name]
    end
  end
end