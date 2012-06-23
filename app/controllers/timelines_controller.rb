class TimelinesController < ApplicationController

  hobo_model_controller

  #auto_actions :all
  auto_actions :show, :edit, :update, :destroy
  
  auto_actions_for :owner, [:new, :create]

end
