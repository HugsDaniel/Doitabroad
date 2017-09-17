class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @university = @reservation.university

    if @reservation.save
      redirect_to university_path(@university)
      flash[:notice] = "Vous avez postulé!"
    else
      flash[:alert] = "Erreur dans la manip, recommencez !"
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :university_id)
  end
end
