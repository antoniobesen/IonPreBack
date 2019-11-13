module Api
    class CompaniesController < ApplicationController
        def index
            render json: Company.all, status: :ok
        end
        def show
            if Company.exists?(params[:id])
                render json: Company.find(params[:id]), status: :ok
            else
                render status: :not_found
            end
        end
        def create
            company = Company.new(params.permit(:name))
            if company.save
                render json: company, status: :ok 
            else render status: :unprocessable_entity #?
            end
        end
        def update
            if Company.exists?(params[:id])
                company = Company.find(params[:id])
                if company.update_attributes(params.permit(:name))
                    render json: company, status: :ok
                else
                    render status: :unprocessable_entity #?
                end
            else
                render status: :not_found
            end

        end
        def destroy
            company = Company.find(params[:id])
            if company.destroy
                render json: company, status: :ok
            else
                render status: :unprocessable_entity #?
            end
        end
    end
end