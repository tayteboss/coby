class EventsController < ApplicationController


    def index
        render :index
    end

    def details
        show_event(params[:id])
        show_posts(params[:id])
        show_inactive_posts(params[:id])

        # Post.find_by(event_id: params)
        render :details
    end

    def create_post
        event = Event.get_event(params[:id])
        if event.nil?
            event = create_event()
        end
        Post.create(
            user_id: session[:current_user_id], 
            event_id: event.id,
            description: params[:post_description],
            active_status: true,
            api_event_id: params[:id],
            post_title: params[:post_title],
            age_preference: params[:age_preference],
            gender_preference: params[:gender_preference],
            group_size: params[:group_size],
        )
        redirect_to "/events/details?id=#{params[:id]}"
    end
    def create_event
        Event.create(
            event_name: params[:name],
            event_date: params[:date],
            location: params[:location],
            event_time: params[:time],
            event_image: params[:image],
            api_event_id: params[:id]
        )
        
    end


    def show_event (id)
        response = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?id=#{id}&size=1&apikey=4YWDBJED6GiApvdUBnHWa3hVuiXC4YnJ")

        response["_embedded"]["events"].each do |result|
            @name = result['name']
            @image = result['images'][4]['url']
            @location = result['_embedded']['venues'][0]['name']
            @date = result['dates']['start']['localDate']
            @time = result['dates']['start']['localTime']
        end
    end

    def show_posts (id)
        @event_id = Event.get_event(params[:id])
        @active_posts = Post.active_posts(@event_id)
        @user_names = User.active_posts(@event_id).pluck(:first_name)
        
    end

    def show_inactive_posts (id)
        @event_id = Event.get_event(params[:id])
        @inactive_posts = Post.inactive_posts(@event_id)
        @user_names = User.inactive_posts(@event_id).pluck(:first_name)
        
    end



end

