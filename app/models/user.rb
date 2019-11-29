require 'carrierwave'
require 'carrierwave/orm/activerecord'

class User < ApplicationRecord
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  def self.get_user (user_id)
      find_by(id: user_id)
  end



end