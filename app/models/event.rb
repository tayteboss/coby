class Event < ApplicationRecord

    def self.get_event (id)
        find_by(api_event_id: id)
    end 

    
    

end


