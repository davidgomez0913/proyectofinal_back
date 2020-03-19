class EventsController < ApplicationController

    def index
        @events = Event.all.order("fecha_hora desc")
        #@events = Event.search(params[:search],params[:filter]) if params[:search]
        #respond_to do |format|
        #    format.html
        #    format.json { render :json => @events.to_json }
        #end
        render json: @events
    end
    
    def show
        @event=Event.find(params[:id])
        respond_to do |format|
            format.html
            format.json { render :json => @event.to_json }
        end
    end
    
    def new
        @event=Event.new()
    end
    
    def create
        @event = current_user.events.new(event_params)
        if @event.save
            render json: @event
        else
            render json: @event
        end
    end
    
    
    def edit
        @event=Event.find(params[:id])
    end
    
    def update
        event = Event.find(params["id"])
        event.update(event_params)
        render json: event
    end
    
    def destroy
        Event.find(params["id"]).destroy
        redirect_to "/events"
    end
    
    private
    
    def event_params
        params.require(:event).permit(:name, :category, :fecha_hora, :quota, :image, :user_id)
    end

end
