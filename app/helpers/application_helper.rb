# frozen_string_literal: true

module ApplicationHelper
  def user_admin
    return current_user.admin if user_signed_in?
  end

  def user_moderator
    return current_user.moderator if user_signed_in?
  end
end
