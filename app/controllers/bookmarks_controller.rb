class BookmarksController < ApplicationController
    def index 
        @bookmarks = Bookmark.all
        render json: @bookmarks
    end

    def show
        @bookmark = Bookmark.find_by(id: params[:id])
        if @bookmark
          render json: @bookmark
        else
          render json: { message: 'This ID does not exist' }
        end
      end
      
    def create
        @bookmark = Bookmark.create(bookmark_params)
        if @bookmark.valid?
          render json: @bookmark
        else
          render json: { error: 'failed to add new bookmark' }, status: :not_acceptable
        end
    end

    

    def destroy 
      @bookmark = Bookmark.find_by(id: params[:id])
      @event.destroy

      render json: { message: 'event deleted' }
    end
private 

def bookmark_params 
    params.require(:event).permit(:user_id, :event_id)
end
end