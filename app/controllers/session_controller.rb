class SessionController < ApplicationController
  before_action :authenticate_user!

  def destroy
    # TODO: need to only delete the current active user
    reset_session
    redirect_to root_path, notice: "You have been logged out."
  end
end