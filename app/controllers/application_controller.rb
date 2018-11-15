class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= Practitioner.find_by(prac_id: session[:prac_id]) if session[:prac_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in first"
      redirect_to login_path
    end
  end
end
