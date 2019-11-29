class Post < ApplicationRecord
    belongs_to :user
    belongs_to :event
    
    def self.active_posts (event_id)
        where(event_id: event_id, active_status: true)
    end
    
    
    def self.inactive_posts (event_id)
        where(event_id: event_id, active_status: false)
    end

    def self.get_all_users (event_id)
        where(event_id: event_id)
  end

end




