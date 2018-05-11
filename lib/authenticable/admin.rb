module Authenticable::Admin
  private

  def authenticate_admin_user
    redirect_to admin_session_path unless current_admin_user
  end

  def current_admin_user
    User.find_by(id: session[:user_id])
  end
end
