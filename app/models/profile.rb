class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :verification_document, PhotoUploader
  mount_uploader :profile_image, PhotoUploader

  # GENDER = ['male', 'female']
  # validates :gender, inclusion: { in: GENDER }
end
