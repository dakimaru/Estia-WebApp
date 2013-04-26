module UsersHelper
  def sign_in(user)
    if params[:remember_me]
      cookies.permanent[:remember_token] = user.remember_token
    else
      cookies[:remember_token] = user.remember_token
    end
    self.current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end

end
