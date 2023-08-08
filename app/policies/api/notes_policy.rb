class Api::NotesPolicy < ApplicationPolicy
  def destroy?
    (user.is_a?(User) && record.user_id == user&.id)
  end

  def update?
    (user.is_a?(User) && record.user_id == user&.id)
  end

  def create?
    (user.is_a?(User) && record.user_id == user&.id)
  end
end
