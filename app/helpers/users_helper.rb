module UsersHelper
  private 

    def current_user
      @user = User.find(session[:user_id]) if session[:user_id]
    end
    
    def authorize
      redirect_to login_path, alert: "Please login first" if current_user.nil?
    end

end
