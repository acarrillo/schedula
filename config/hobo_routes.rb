# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

HoboApp::Application.routes.draw do


  # Resource routes for controller "events"
  get 'events/new(.:format)', :as => 'new_event'
  get 'events/:id/edit(.:format)' => 'events#edit', :as => 'edit_event'
  get 'events/:id(.:format)' => 'events#show', :as => 'event', :constraints => { :id => %r([^/.?]+) }
  post 'events(.:format)' => 'events#create', :as => 'create_event'
  put 'events/:id(.:format)' => 'events#update', :as => 'update_event', :constraints => { :id => %r([^/.?]+) }
  delete 'events/:id(.:format)' => 'events#destroy', :as => 'destroy_event', :constraints => { :id => %r([^/.?]+) }

  # Resource routes for controller "timelines"
  get 'timelines(.:format)' => 'timelines#index', :as => 'timelines'
  get 'timelines/new(.:format)', :as => 'new_timeline'
  get 'timelines/:id/edit(.:format)' => 'timelines#edit', :as => 'edit_timeline'
  get 'timelines/:id(.:format)' => 'timelines#show', :as => 'timeline', :constraints => { :id => %r([^/.?]+) }
  post 'timelines(.:format)' => 'timelines#create', :as => 'create_timeline'
  put 'timelines/:id(.:format)' => 'timelines#update', :as => 'update_timeline', :constraints => { :id => %r([^/.?]+) }
  delete 'timelines/:id(.:format)' => 'timelines#destroy', :as => 'destroy_timeline', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "timeline_followships"
  post 'timeline_followships(.:format)' => 'timeline_followships#create', :as => 'create_timeline_followship'
  put 'timeline_followships/:id(.:format)' => 'timeline_followships#update', :as => 'update_timeline_followship', :constraints => { :id => %r([^/.?]+) }
  delete 'timeline_followships/:id(.:format)' => 'timeline_followships#destroy', :as => 'destroy_timeline_followship', :constraints => { :id => %r([^/.?]+) }


  # Index action routes for controller "users"
  get 'users/complete_name(.:format)', :as => 'complete_name_users'

  # Lifecycle routes for controller "users"
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/activate(.:format)' => 'users#do_activate', :as => 'do_user_activate'
  get 'users/:id/activate(.:format)' => 'users#activate', :as => 'user_activate'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

<<<<<<< HEAD

  # Resource routes for controller "timeline_followships"
  post 'timeline_followships(.:format)' => 'timeline_followships#create', :as => 'create_timeline_followship'
  put 'timeline_followships/:id(.:format)' => 'timeline_followships#update', :as => 'update_timeline_followship', :constraints => { :id => %r([^/.?]+) }
  delete 'timeline_followships/:id(.:format)' => 'timeline_followships#destroy', :as => 'destroy_timeline_followship', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "events"
  get 'events/new(.:format)', :as => 'new_event'
  get 'events/:id/edit(.:format)' => 'events#edit', :as => 'edit_event'
  get 'events/:id(.:format)' => 'events#show', :as => 'event', :constraints => { :id => %r([^/.?]+) }
  post 'events(.:format)' => 'events#create', :as => 'create_event'
  put 'events/:id(.:format)' => 'events#update', :as => 'update_event', :constraints => { :id => %r([^/.?]+) }
  delete 'events/:id(.:format)' => 'events#destroy', :as => 'destroy_event', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "events"
  get 'timelines/:timeline_id/events/new(.:format)' => 'events#new_for_timeline', :as => 'new_event_for_timeline'
  post 'timelines/:timeline_id/events(.:format)' => 'events#create_for_timeline', :as => 'create_event_for_timeline'

=======
>>>>>>> master
  namespace :admin do


    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end
