class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protected

  def check_user_login!
    if !user_signed_in?
      if request.path != root_path
        redirect_to root_path
      end
    end
  end
end
