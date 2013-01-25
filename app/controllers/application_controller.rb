class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  #Authentication helper methods
  helper_method :current_student
  helper_method :current_tutor
  helper_method :authorize
  helper_method :require_login
  
  private
  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  
  def current_tutor
    @current_tutor ||= Tutor.find(session[:tutor_id]) if session[:tutor_id]
  end

  def authorize
    unless session[:tutor_id]
      render "public/404.html"
      false
    else
      true
    end
  end
  
  def require_login
    unless session[:tutor_id] || session[:student_id]
      flash[:error] = "You must be logged to access this section"
      redirect_to log_in_url
    end
  end
  
end
