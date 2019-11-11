module Api
    class UsersController < ApplicationController
        def index
            users = User.order('created_at DESC')
            render json: User.all, status: :ok
        end
    end
end