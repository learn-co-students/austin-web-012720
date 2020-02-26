class BagelsController < ApplicationController
  def index
    @bagels = Bagel.all
  end

  def new
    @user = current_user
    @bagel = Bagel.new
  end

  def create
    # binding.pry
    @bagel = Bagel.new(bagel_params)

    @bagel.user = User.find(bagel_params[:user_id])

    if @bagel.valid?
      @bagel.save
      flash[:notice] = 'Bagel created!'
      redirect_to bagel_path(@bagel)
    else
      # @errors will be availablie in the view
      @errors = @bagel.errors.full_messages
      render 'new'

      # @bagel will be lost after the redirect_to but the error stays in flash
      # flash[:errors] = @bagel.errors.full_messages
      # redirect_to new_bagel_path
    end
  end

  def show
  end

  def edit

    @bagel = Bagel.find(params[:id])
  end

  def update
    @bagel = Bagel.find(params[:id])

    @bagel.update(update_params)
    redirect_to bagels_path
  end

  private

  def bagel_params
    params.require(:bagel).permit(:name, :price, :flavor, :user_id)
  end

  def update_params
    params.require(:bagel).permit(:price)
  end

end
