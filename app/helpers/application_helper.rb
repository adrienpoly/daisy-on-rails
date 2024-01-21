module ApplicationHelper
  def sign_in?
    true if session[:user_id]
  end
end
