class BookmarksController < ApplicationController
    def index 
        bookmarks = Bookmarks.all
        render json: users
    end
    def create
        bookmark = Bookmark.create
    end
end
