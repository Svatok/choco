module Admin
  class SessionsController < ApplicationController
    def show
      render :show
    end

    def create
      result = Admin::Session::Create.call(params, session: session)

      if result.success?
        redirect_to admin_header_links_path, notice: 'Logged in'
      else
        redirect_to admin_session_path, notice: 'Access denied'
      end
    end

    def destroy
      session.delete :user_id
      redirect_to admin_session_path, notice: 'Logged out'
    end
  end
end
