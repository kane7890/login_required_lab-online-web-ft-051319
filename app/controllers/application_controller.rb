class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session.include? :name
      session[:name]
    else
      nil
    end
  end
  def hello
    if !session.include? :name
      redirect_to sessions_new_path
    end
  end
end
