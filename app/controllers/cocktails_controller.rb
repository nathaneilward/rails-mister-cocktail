class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktails.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
