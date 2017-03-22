class HomeController < ApplicationController

  def index
  end

  def index_android
  end

  def index_web
  end

  def index_analytics
  end


  def course_view_home
  end


  def subscribeThisCourse
    user_id = params[:user_id]
    course_id = params[:course_id]
    newSubscribe = Subscribe.new
    newSubscribe.user_id = user_id
    newSubscribe.course_id = course_id
    newSubscribe.save
    return redirect_to '/myCourses'
  end


end
