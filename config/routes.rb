Rails.application.routes.draw do
  
  get 'mentor/myCourse'

  get 'mentor/profile'

  get 'mentor/settings'

  resources :mentors
  get 'student/profile'

  devise_for :teachers
  devise_for :users
  resources :courses
  get '/' => 'home#index'
  get '/android' => 'home#index_android'   # where all android courses listed
  get '/web' => 'home#index_web'           # where all web courses listed
  get '/analytics' => 'home#index_analytics'     # where all analytics courses listed
  get '/course_view_home/:id' => 'home#course_view_home'  # view the course when user is not sign in

  # ----------For subscribe --------------#

  post '/subscribeThisCourse/:user_id/:course_id' => "home#subscribeThisCourse"

  #------------User (Student)----------------#

  get '/myCourses' => 'student#myCourses'
  get '/profile' => 'student#profile'
  get '/settings' => 'student#settings'
  get '/doingCourse/:course_id' => 'student#doingCourse'
  get '/unsubscribeCourse/:id' => 'student#unsubscribeCourse'
  post '/changeSettings' => 'student#changeSettings'
  get '/doneVideo/:link/:course_id' => 'student#doneVideo'
  get '/accomplishment' => 'student#accomplishment'
  get '/addingDoneCourse/:course_id' => 'student#addingDoneCourse'

  #--------------Teacher------------------#

  get '/addNewCourse' => 'mentor#addNewCourse'
  post '/nowAddingCourse' => 'mentor#nowAddingCourse'
  get '/mentor_myCourse' => 'mentor#mentor_myCourse'
  get '/mentorProfile' => 'mentor#mentorProfile'
  get '/mentorSettings' => 'mentor#mentorSettings'
  get '/seeFullCourse/:course_id' => 'mentor#seeFullCourse'

  post '/changeMentorSettings' => 'mentor#changeMentorSettings'

end
