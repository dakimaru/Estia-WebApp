module SessionsHelper
  private
  
  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end

  def sign_out
    current_user = nil
    cookies.delete(:auth_token)
    cookies.delete(:remember_token)
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  def current_user?(user)
    user == current_user
  end

  def signed_in
    !current_user.nil?
  end
  
  def authenticate
    deny_access unless signed_in
  end
  

  def unauthorized_user
    store_location
    redirect_to signin_path, notice: "Please sign in."
  end
  
  def authorize
    redirect_to login_path, alert: "Please login first" if current_user.nil?
  end
  
end
