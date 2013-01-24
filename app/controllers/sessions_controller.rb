class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.authenticate(params[:email], params[:password])
    tutor = Tutor.authenticate(params[:email], params[:password])
    if student
      session[:student_id] = student.id
      redirect_to root_url, :notice => "Logged in!"
    else if tutor
        session[:tutor_id] = tutor.id
        redirect_to root_url, :notice => "Logged in!"
      else
        flash.now.alert = "Invalid email or password"
        render "new"
      end
    end
  end

  def destroy
    session[:student_id] = nil
    session[:tutor_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end