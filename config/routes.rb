Rails.application.routes.draw do
  
  get '/' => 'home#index'
  get '/android' => 'home#index_android'   # where all android courses listed
  get '/web' => 'home#index_web'           # where all web courses listed
  get '/analytics' => 'home#index_analytics'     # where all analytics courses listed
  get '/course_view_home' => 'home#course_view_home'  # view the course when user is not sign in
end
