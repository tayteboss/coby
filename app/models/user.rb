require 'carrierwave'
require 'carrierwave/orm/activerecord'

class User < ApplicationRecord
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  has_many :posts

  def self.get_user (user_id)
      find_by(id: user_id)
  end

  def self.active_posts(event_id)
    joins(:posts).where(posts:{event_id: event_id, active_status: true})
  end

  def self.inactive_posts(event_id)
    joins(:posts).where(posts:{event_id: event_id, active_status: false})
  end



end