class BasicLottosController < ApplicationController
  before_action :set_basic_lotto, only: [:show, :edit, :update, :destroy]

  def index
    @basic_lottos = BasicLotto.all
  end

  def show
    set_basic_lotto
    @lotto_roll_values = @basic_lotto.ordered_rolls_values
  end

  def new
    @basic_lotto = BasicLotto.new
  end

  def create
    # Just call the method that performs the action you need
    @basic_lotto = BasicLotto.generate
    # For now, we just redirect or render the result
    redirect_to basic_lottos_path, notice: "Generated Lotto Number: #{@lotto_number}"
  end

  def edit
  end

  def update
    if @basic_lotto.update(basic_lotto_params)
      redirect_to @basic_lotto, notice: 'Basic Lotto was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @basic_lotto.destroy
    redirect_to basic_lottos_url, notice: 'Basic Lotto was successfully destroyed.'
  end

  # # Custom action to show rolls in numeric order
  # def ordered_rolls
  #   @ordered_rolls = @basic_lottos.rolls.order(:value)
  # end

  private

  def set_basic_lotto
    @basic_lotto = BasicLotto.find(params[:id])
  end

  def basic_lotto_params
    params.require(:basic_lotto)
  end
end