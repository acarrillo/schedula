class EventsController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :index
  auto_actions_for :timelines, [:create, :new]
  
  show_action :json
  def json
    print 'in json function'
    print params[:id]
    @get = params[:id]
    @event = Event.find(params[:id])
    @name = @event.name
    @description = @event.description
  end

  def new_for_timeline
    @timeline = Timeline.find_by_id(params[:timeline_id])
    hobo_new
  end
  
  def create
    @timeline = Timeline.find_by_id(params[:timeline][:id])
    print "Timeline ID: " + params[:timeline][:id]
    hobo_create do
      @this.timelines=[@timeline]
      redirect_to @timeline if valid?
    end
  end

end
