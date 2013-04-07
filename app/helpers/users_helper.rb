module UsersHelper
  private 

    def current_user
      @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    end
    
    def authorize
      redirect_to login_path, alert: "Please login first" if current_user.nil?
    end


end
