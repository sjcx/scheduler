class WelcomeController < ApplicationController
  def index
    @appointments = Appointment.find(:all, :conditions => "student_id IS NULL" )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
    end
  end
end
