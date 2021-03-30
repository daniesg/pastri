class ApplicationController < ActionController::Base
  helper_method :current_user

  def signed_in?
    current_user.present?
  end

  def current_user
    User.find_by_id(session[:user_id]) if session[:user_id].present?
  end

  def sign_in(email)
    user = User.find_by_email email
    session[:user_id] = user.id if user.present?
    return user.present?
  end

  def sign_out
    session[:user_id] = nil
  end
end
