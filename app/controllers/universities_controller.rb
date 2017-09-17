class UniversitiesController < ApplicationController
  def show
    @university = University.find(params[:id])
    @reservation = Reservation.new
  end
end
