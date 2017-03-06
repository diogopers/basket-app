class Extra < ApplicationRecord
  belongs_to :producer
  mount_uploader :photo, PhotoUploader
end
