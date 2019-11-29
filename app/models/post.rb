class Post < ApplicationRecord

    
    def self.active_posts (event_id)
        where(event_id: event_id, active_status: true)
    end
    
    
    def self.inactive_posts
        where(active_status: false)
    end

    def self.get_all_users (event_id)
        where(event_id: event_id)
  end

end




