class EventsController < ApplicationController
    def index
        @events = Event.all
        render json: @events
    end
    
    def show
        @event = Event.find_by(id: params[:id])
        if @event
          render json: @event
        else
          render json: { message: 'This ID does not exist' }
        end
      end

    def create
        @event = Event.create(event_params)
        if @event.valid?
          render json: @event
        else
          render json: { error: 'failed to add new event' }, status: :not_acceptable
        end
    end

    def update
      @event = Event.find_by(id: params[:id])
      if @event.update(event_params)
        render json: @event
      else
        render json: { error: 'Something went wrong' }
      end
    end

    def destroy 
      @event = Event.find_by(id: params[:id])
      @event.destroy

      render json: { message: 'event deleted' }
    end
  
    private 
    def event_params
        params.require(:event).permit(:user_id, :name, :details, :address, :city, :state, :zipcode, :time, :date, :sport, :image, :latitude, :longitude)
    end
  
end
