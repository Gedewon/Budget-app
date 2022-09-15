class CategoriesController < ApplicationController
  def index
    @categries = Categorie.includes(:transferces).all
  end

  def new
    @categorie = Categorie.new
  end

  def create
    @categorie = Categorie.new(categorie_params)
    @categorie.user_id = current_user.id

    if @categorie.save
      flash[:notice] = 'Transaction was successfully created.'
      redirect_to user_categories_path
    else
      flash[:error] = 'Error creating transaction'
      redirect_to user_categories_path(@categorie)
    end
  end

  def show; end

  def categorie_params
    params.require(:categorie).permit(:name, :icon)
  end

  def total(recipe)
    total = 0
    recipe.transferces.each do |transfer|
      total += transfer.amount
    end
    total
  end

  helper_method :total
end
