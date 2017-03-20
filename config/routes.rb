Rails.application.routes.draw do
  
  get 'student/profile'

  devise_for :teachers
  devise_for :users
  resources :courses
  get '/' => 'home#index'
  get '/android' => 'home#index_android'   # where all android courses listed
  get '/web' => 'home#index_web'           # where all web courses listed
  get '/analytics' => 'home#index_analytics'     # where all analytics courses listed
  get '/course_view_home/:key' => 'home#course_view_home'  # view the course when user is not sign in

  # ----------For subscribe --------------#

  post '/subscribeThisCourse/:user_id/:course_id/:key' => "home#subscribeThisCourse"

  #------------User (Student)----------------#

  get '/myCourses' => 'student#myCourses'
  get '/profile' => 'student#profile'
  get '/settings' => 'student#settings'


end
