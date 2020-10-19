class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end
    def update
        user = User.find_by(id: params[:id])
        if user.update(user_params)
          render json: user
        else
          render json: { error: 'Something went wrong' }
        end
      end
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :file)
    end
end