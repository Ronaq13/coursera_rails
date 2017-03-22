class StudentController < ApplicationController

  def myCourses
  end

  def profile
  end

  def settings
  end

  def changeSettings

    changedEmail = params[:email_id]
    changedUserName = params[:user_name]
    changedShortBio = params[:short_bio]
    changedAge = params[:age]
    changedGender = params[:gender]

    user = User.find(current_user.id)
    user.update_attribute(:email, changedEmail)
    user.update_attribute(:username, changedUserName)
    user.update_attribute(:short_bio,changedShortBio)
    user.update_attribute(:age,changedAge)
    user.update_attribute(:gender, changedGender)
    return redirect_to '/profile'
  end

  def doingCourse
  end



end
