class UserProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(
      :first_name_kanji,
      :last_name_kanji,
      :first_name_kana,
      :last_name_kana,
      :gender,
      :dob,
      :phone_number,
      :u_image_url,
      :postal_code,
      :state_kanji,
      :state_kana,
      :city_kanji,
      :city_kana,
      :town_kanji,
      :town_kana,
      :line1_kanji,
      :line1_kana,
      :line2_kanji,
      :line2_kana,
      :verification_document,
      :account_id,
      :tos
      )
  end

end
