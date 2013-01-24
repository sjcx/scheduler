class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_student
  helper_method :current_tutor
  
  private
  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  
  def current_tutor
    @current_tutor ||= Tutor.find(session[:tutor_id]) if session[:tutor_id]
  end
end
