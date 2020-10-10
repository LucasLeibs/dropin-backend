class EventsController < ApplicationController
    def index
        @event = Event.all
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
    end

    private 
    def event_params
        params.require(:event).permit(:user_id, :name, :address, :city, :state. :zipcode, :time, :date, :sport)
      end
    end
end
