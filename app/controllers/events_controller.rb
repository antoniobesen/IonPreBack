require 'csv'
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

    

    def import_csv
        csv_file = CSV.read(params[:file].path, headers: true)
        csv_file.each do |row|
            user_id = row["user_id"]
            event_name = row["event_name"]
            action = row["action"]
            due_at = row["date_time"]
            event = Event.new(user_id: user_id, name: event_name, action: action, due_at: due_at)
            unless event.save
                raise "Event not saved"
            end
        end
    end




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