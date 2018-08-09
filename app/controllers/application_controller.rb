class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!


  private

  def after_sign_in_path_for(resource)
    new_profile_path
  end
end
