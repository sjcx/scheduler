class WelcomeController < ApplicationController
  def index
    @appointments = Appointment.find_all_by_date(params[:date])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
      format.js { }
    end
  end
end
