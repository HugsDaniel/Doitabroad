class WishesController < ApplicationController
  def index
    @wishes = current_user.wishes
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
      redirect_to wish_path(@wish)
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
