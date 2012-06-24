class EventsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
  
  show_action :json
  def json
    print 'in json function'
    print params[:id]
    @get = params[:id]
    @event = Event.find(params[:id])
    @name = @event.name
    @description = @event.description
  end

end
