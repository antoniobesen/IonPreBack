module Api
    class EventsController < ApplicationController
        def index
            render json: Event.all, status: :ok
        end

        def show
            if Event.exists?(params[:id])
                render json: Event.find(params[:id]), status: :ok
            else
                render status: :not_found
            end
        end

       

        #  def import_csv
        #     puts "aqui"
        #     #  csv_file = params[:data]
        #  end




         # def create
        #     event = Event.create
        # end
        
        # def update
        #     if Event.exists?(params[:id])
        #         event = Event.find(params[:id])
        #         if event.update_attributes(params.permit(:name, :due_date, :action, :user_id))
        #             render json: event, status: :ok
        #         else
        #             render status: :unprocessable_entity #?
        #         end
        #     else
        #         render status: :not_found
        #     end
        # end

        # def destroy
        # end
    end
end