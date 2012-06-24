class TimelinesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  show_action :json
  def json
    @s = TimelinesController.json_from_id(params[:id])
    return @s
  end
  
  def self.json_from_id(id)
    @get = id
    @timeline = Timeline.find(id)
    @name = @timeline.name
    @events = @timeline.events
    
    @s = "{'id' : " + @get.to_s + ", 'name' : '" + @name + "', 'events' : [ "
    
    for @item in @events
       @s += "{'id' : " + @item.id.to_s + ", 'name' : '" + @item.name + "', 'description' : '" + @item.description + "'}, "
    end
    
    @s += " ]}"
    
    return @s
  end
  
end
