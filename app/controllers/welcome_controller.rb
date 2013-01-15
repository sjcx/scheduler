class WelcomeController < ApplicationController
  def index
    @appointments = Appointment.where(:student_id.empty?)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
    end
  end
end
