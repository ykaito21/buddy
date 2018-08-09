class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_profile, only: [ :show, :edit, :update, :destroy ]


  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profiles_url
    else
      render :edit
    end
  end
  def destroy
    @profile.destroy
    redirect_to root_path
  end

  def index
    @profiles = Profile.all
  end

  private

  def profile_params
    params.require(:profile).permit(
      :first_name_kanji,
      :last_name_kanji,
      :first_name_kana,
      :last_name_kana,
      :gender,
      :dob,
      :phone_number,
      :profile_image,
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

  def set_profile
    @profile = Profile.find(params[:id])
  end

end
