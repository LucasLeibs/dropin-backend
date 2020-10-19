class FileController < ApplicationController
    
    def index

    end
    def create 
       
        user = User.find(params[:user_id])
        byebug
        file = user.file.attach(params[:file])
        
        render json: {path: rails_blob_path(user.file, only_path: true)}
    end
end
