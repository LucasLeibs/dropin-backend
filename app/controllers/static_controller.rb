class StaticController < ApplicationController
def home
    render json: {status: "its Working"}
end
end