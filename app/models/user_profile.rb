class UserProfile < ApplicationRecord
  belongs_to :user
  has_one :user_profile, dependent: :destroy
  GENDER = ['male', 'female']
  validates :gender, inclusion: { in: GENDER }
end
