module StudentHelper

    def courseIsDone(c_id,u_id)

      # DoneCourse.all.each do |dc|
      #
      #   if(dc.user_id === u_id)
      #     if (dc.course_id === c_id)
      #
      #       return true
      #     else
      #       return false
      #     end
      #   else
      #     return false
      #   end
      # end
      user = User.find(u_id)
      if user.done_courses.find_by(course_id: c_id)
        return true
      else
        return false
      end
    end


    def addingToDoneCourse(c_id)
      if current_user.done_courses.find_by(course_id: params[:course_id], user_id: current_user.id)
        return
      else
        dc = DoneCourse.new
        dc.user_id = current_user.id
        dc.course_id = params[:course_id]
        dc.save
        return
      end
    end




end
