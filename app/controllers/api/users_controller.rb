module Api
    class UsersController < ApplicationController
        def index
            render json: User.all, status: :ok
        end

        def show
            render json: User.find(params[:id]), status: :ok
        end

        def create
            user = User.new(params.permit(:email, :company_id))
            if user.save
                render json: user, status: :ok 
            else render status: :unprocessable_entity #?
            end
        end
        def update
            user = User.find(params[:id])
            if user.update_attributes(params.permit(:email))
                render json: user, status: :ok
            else
                render status: :unprocessable_entity #?
            end
        end
        def destroy
            user = User.find(params[:id])
            if user.destroy
                render json: user, status: :ok
            else
                render status: :unprocessable_entity #?
            end

        end

    end
end