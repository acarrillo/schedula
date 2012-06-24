class UsersController < ApplicationController

  hobo_user_controller

  auto_actions :all, :except => [ :index, :new, :create ]

  autocomplete

  # Normally, users should be created via the user lifecycle, except
  #  for the initial user created via the form on the front screen on
  #  first run.  This method creates the initial user.
  def create
    hobo_create do
      if valid?
        self.current_user = this
        flash[:notice] = t("hobo.messages.you_are_site_admin", :default=>"You are now the site administrator")
        redirect_to home_page
      end
    end
  end
  
  show_action :json
  def json
    @s = "{'owned-timelines' : [  "
    @id = params[:id]
    @user = User.find(@id)
    for @item in @user.timelines
      @s += @item.id.to_s + ', '
    end
    @s += "], 'followed-timelines' : ["
    for @item in @user.joined_timelines
      @s += @item.id.to_s + ', '
    end
    @s += "]}"
    @s
  end
  
  show_action :unfollow_timeline
  def unfollow_timeline
    user_id = params[:user_id]
    user = User.find(user_id)
    timeline_id = params[:timeline_id]
    timeline = Timeline.find(timeline_id)
    user.joined_timelines.delete(timeline)
  end

end
