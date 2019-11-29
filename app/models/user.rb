require 'carrierwave'
require 'carrierwave/orm/activerecord'

class User < ApplicationRecord
  has_secure_password
  mount_uploader :avatar, AvatarUploader
end