module ApplicationHelper

  def userlinks(user)
      if user
        render :partial => 'layouts/userlinks'
      else
        render :partial => 'layouts/registerlinks'
      end
  end

end
