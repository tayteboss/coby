class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    if session[:current_user_id] != nil
        return User.find_by(id: session[:current_user_id])
    else
        return nil
    end
  end

  def logged_in?
    if current_user
        return true
    else
        return false
    end
  end
end
