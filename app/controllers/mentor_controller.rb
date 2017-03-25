class MentorController < ApplicationController

  def mentorProfile
  end

  def mentorSettings
  end

  def addNewCourse
  end

  def nowAddingCourse

    newCourse = Course.new
    newCourse.category = params[:category]
    newCourse.title = params[:title]
    newCourse.subtitle = params[:subtitle]
    newCourse.level = params[:level]
    # newCourse.image = params[:image]
    tmpURL = params[:teaser_video].sub('watch?v=','embed/')
    newCourse.teaser_video = tmpURL
    newCourse.summary = params[:summary]
    newCourse.short_summay = params[:short_summary]
    newCourse.syllabus = params[:syllabus]
    newCourse.expected_duration = params[:expected_duration]
    newCourse.teacher_id = current_teacher.id
    newCourse.save
    return redirect_to '/mentor_myCourse'
  end

  def seeFullCourse
  end

  def changeMentorSettings
    changedEmail = params[:email_id]
    changedUserName = params[:user_name]
    changedShortBio = params[:short_bio]
    changedAge = params[:age]
    changedGender = params[:gender]

    teacher = Teacher.find(current_teacher.id)
    teacher.update_attribute(:email, changedEmail)
    teacher.update_attribute(:username, changedUserName)
    teacher.update_attribute(:short_bio,changedShortBio)
    teacher.update_attribute(:age,changedAge)
    teacher.update_attribute(:gender, changedGender)
    return redirect_to '/mentorProfile'
  end


end
