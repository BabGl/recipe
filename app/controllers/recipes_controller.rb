class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.chef = Chef.find(2)
    
    if @recipe.save
      flash[:success] = "Uw Recept is aangemaakt"
      redirect_to recipes_path
      elsif render :new
    end
    
  end
   def edit
        @recipe = Recipe.find(params[:id])
   end
  def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
        flash[:Succes] = "Uw Recept is bewerkt"
        redirect_to recipes_path(@recipe)
        else
          render :edit
        end
  end
  
  def destroy
    Recipe.find(params[:id]).destroy
    flash[:success] = "Recept verwijderd"
    redirect_to recipes_path
  end
  
  private
  def recipe_params
    params.require(:recipe).permit(:name, :summary, :description)
  end
  
  
end