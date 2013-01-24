class ApplicationController < ActionController::Base
  protect_from_forgery

  
  #Authentication helper methods
  helper_method :current_student
  helper_method :current_tutor
  helper_method :authorize
  
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
  
end
