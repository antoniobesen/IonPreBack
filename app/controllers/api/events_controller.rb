module Api
    class EventsController < ApplicationController
        def index
            events = Event.order('created_at DESC')
            render json: {status: 'SUCCESS', message:'Events Loaded', data: events},status: :ok
        end
    end
end