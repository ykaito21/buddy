class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!


  private

  def after_sign_in_path_for(resource)
    edit_profile_path(resource.profile.id)
  end
end
