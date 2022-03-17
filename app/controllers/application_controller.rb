class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user # it is used to convert current_user return into a boolean
  end

  def require_user
    unless logged_in?
      flash[:danger] = 'You have to be logged in first to perform that action'
      redirect_to root_path

    end
  end

  def redirec_if_loggedin
    if logged_in?
      flash[:notice] = "you are logged in already"
      redirect_to root_path
    end
  end
end
