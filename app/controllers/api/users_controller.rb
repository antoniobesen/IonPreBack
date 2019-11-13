module Api
    class UsersController < ApplicationController
        def index
            render json: User.all, status: :ok
        end

        def show
            if User.exists?(params[:id])
                render json: User.find(params[:id]), status: :ok
            else
                render status: :not_found
            end
        end

        def create
            user = User.new(params.permit(:email, :company_id))
            if user.save
                render json: user, status: :ok 
            else render status: :unprocessable_entity #?
            end
        end
        def update
            if User.exists?(params[:id])
                user = User.find(params[:id])
                if user.update_attributes(params.permit(:email))
                    render json: user, status: :ok
                else
                    render status: :unprocessable_entity #?
                end
            else
                render status: :not_found
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