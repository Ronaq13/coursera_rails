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

end
