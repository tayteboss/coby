class EventController < ApplicationController

    def home
        render  :event_home
    end

    def details
        render  :event
    end


end
