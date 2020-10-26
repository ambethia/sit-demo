class EventsController < ApplicationController
  def show
    event = Event.find(params[:id])
            
    render inertia: 'Event/Show',
      props: {
        event: event.as_json(
          only: [ :id, :name, :description ]
        )
      }
  end
end
