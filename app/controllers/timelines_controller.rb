class TimelinesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  show_action :json
  def json
    @get = params[:id]
    @timeline = Timeline.find(params[:id])
    @name = @timeline.name
    @events = @timeline.events
    @s = ''
    for @item in @events
       @s += "{'id' : " + @item.id.to_s + ", 'name' : '" + @item.name + "', 'description' : '" + @item.description + "'}, "
    end
    return @s
  end
  
end
