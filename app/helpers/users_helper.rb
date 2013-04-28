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

  def current_user
    @current_user ||= User.find_by_remember_token!(cookies[:remember_token]) if cookies[:remember_token]
  end
  
  def signed_in_user
    unless current_user
      store_location
      redirect_to signup_path, :flash => { :error => "Please sign up. If you have an account, please sign in."}
    end
  end
  
end
