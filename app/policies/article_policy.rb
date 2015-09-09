class ArticlePolicy < ApplicationPolicy
  def update?
    user.administrator?
  end
  def show?
    user.administrator?
  end
end