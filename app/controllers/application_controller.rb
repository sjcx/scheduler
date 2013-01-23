class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_student
  
  private
  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end
end
