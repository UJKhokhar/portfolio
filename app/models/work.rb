class Work < ActiveRecord::Base
  belongs_to :user
  mount_uploader :screenshots, ScreenshotsUploader
end
