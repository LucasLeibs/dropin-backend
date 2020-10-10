class AttendingsController < ApplicationController
    def index 
        @attendings = Attending.all
        render json: @attendings
    end

    def show
        @attending = Attending.find_by(id: params[:id])
        if @attending
          render json: @attending
        else
          render json: { message: 'This ID does not exist' }
        end
      end
      
    def create
        @attending = Attending.create(attending_params)
        if @attending.valid?
          render json: @attending
        else
          render json: { error: 'failed to add new attending' }, status: :not_acceptable
        end
    end

    

    def destroy 
      @attending = Attending.find_by(id: params[:id])
      @event.destroy

      render json: { message: 'event deleted' }
    end
private 

def attending_params 
    params.require(:attending).permit(:user_id, :event_id)
end
end
