class Robot < ApplicationRecord
  mount_uploader(:picture, PictureUploader)
end
