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


    profilePhoto = params[:profile_photo]
    profile_photo_name = current_user.id.to_s + "." + profilePhoto.original_filename.split(".")[1]


    File.open(Rails.root.join('public', 'uploads','users', profile_photo_name), 'wb') do |file|
      file.write(profilePhoto.read)
    end

    user = User.find(current_user.id)
    user.update_attribute(:email, changedEmail)
    user.update_attribute(:username, changedUserName)
    user.update_attribute(:short_bio,changedShortBio)
    user.update_attribute(:age,changedAge)
    user.update_attribute(:gender, changedGender)
    user.update_attribute(:photo, profile_photo_name)
    return redirect_to '/profile'
  end

  def doingCourse
  end

  def unsubscribeCourse
    course = Subscribe.find_by_course_id(params[:id])
    course.destroy
    return redirect_to '/myCourses'
  end


  def doneVideo
    dv = DoneVideo.new
    dv.user_id = current_user.id
    dv.link_key = params[:link]
    dv.course_id = params[:course_id]
    dv.save

    return redirect_to '/doingCourse/'+params[:course_id]

  end

  def accomplishment

  end




end
