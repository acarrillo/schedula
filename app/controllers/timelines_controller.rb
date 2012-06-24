class TimelinesController < ApplicationController

  hobo_model_controller

  auto_actions :all
  
  show_action :json
  def json
    return json_from_id(:id)
  end
  
  def json_from_id(id)
    @get = params[id]
    @timeline = Timeline.find(params[id])
    @name = @timeline.name
    @events = @timeline.events
    
    @s = "{'id' : " + @get + ", 'name' : '" + @name + "', 'events' : [ "
    
    for @item in @events
       @s += "{'id' : " + @item.id.to_s + ", 'name' : '" + @item.name + "', 'description' : '" + @item.description + "'}, "
    end
    
    @s += " ]}"
    
    return @s
  end
  
end
