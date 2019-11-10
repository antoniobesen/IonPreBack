module Api
    class CompaniesController < ApplicationController
        def index
            companies = Company.order('created_at DESC')
            render json: {status: 'SUCCESS', message:'Companies Loaded', data:companies},status: :ok
        end
    end
end