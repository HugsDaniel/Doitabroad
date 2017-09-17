class WishesController < ApplicationController
  def index
    @wishes = current_user.wishes
    @wishes.each do |wish|
      @results = if wish.course == ""
        University.where('pays LIKE ?', wish.pays.downcase)
      elsif wish.pays == ""
        University.where('course LIKE ?', wish.course.downcase)
      elsif wish.pays && wish.course
        University.where('pays LIKE ? AND course = ?', wish.pays.downcase, wish.course.downcase)
      else
        University.all
      end
    end
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.create(wish_params)

    if @wish.save
      redirect_to wishes_path
      flash[:notice] = "Vous avez ajouté une liste de souhaits !"
    else
      flash[:alert] = "La manip n'a pas fonctionné, réessayez."
    end
  end

  private

  def wish_params
    params.require(:wish).permit(:pays, :course, :user_id)
  end
end
