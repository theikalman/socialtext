class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protected

  def check_user_login!
    if user_signed_in?
      redirect_to feeds_path
    else
      redirect_to home_path
    end
  end
end
