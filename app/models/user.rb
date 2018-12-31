class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile, dependent: :destroy

   # before_create :build_profile
   # accepts_nested_attributes_for :profile

  before_create :create_profile
  def create_profile
    profile = build_profile(first_name_kanji: "次郎", last_name_kanji: "太郎")
  end
end
