class AddEventTimeEventImageAndApiEventIdToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :event_time, :text
    add_column :events, :event_image, :text
    add_column :events, :api_event_id, :text
  end
end
