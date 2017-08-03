class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
  end

  def delete
    @dose = Dose.find(params[:cocktail_id])
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
