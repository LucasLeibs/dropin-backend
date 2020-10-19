class RegistrationsController < ApplicationController

    
    def create 
        user = User.create!(registration_params)
            # first_name: params['first_name'], last_name: params['last_name'], email: params['email'], password: params['password'], password_confirmation: params['password_confirmation'])

            if user 
                session[:user_id] = user.id
                render json: { status: :created, user: user}
            else 
                render json: {status: 500}
            end
    end

    def update 
        byebug
    end
private 
def registration_params
    params.require(:registration).permit(:first_name, :last_name, :email, :password, :password_confirmation, :file)
end
end