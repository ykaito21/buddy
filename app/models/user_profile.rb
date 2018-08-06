class UserProfile < ApplicationRecord
  belongs_to :user
  has_one :user_profile, dependent: :destroy
end
