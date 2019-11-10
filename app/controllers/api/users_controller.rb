module Api
    class UsersController < ApplicationController
        def index
            users = User.order('created_at DESC')
            render json: {status: 'SUCCESS', message:'Usuarios carregados', data:users},status: :ok
        end
    end
end