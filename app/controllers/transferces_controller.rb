class TransfercesController < ApplicationController
  before_action :set_categorie, only: %i[new create edit update destroy]
  def index
    @transcation = Transferce.where(user_id: current_user.id,
                                    categorie_id: params[:category_id]).order(created_at: :desc)
  end

  def new
    @transferce = Transferce.new
    @categorie = Categorie.find(params[:category_id])
  end

  def create
    @transaction = Transferce.new(transaction_params)
    @transaction.user_id = current_user.id
    @transaction.categorie_id = @categorie.id

    if @transaction.save
      flash[:notice] = 'Transaction was successfully created.'
      redirect_to user_category_transferces_path
    else
      flash[:error] = 'Error creating transaction'
      redirect_to user_category_transferces_path(@categorie)
    end
  end

  def set_categorie
    @categorie = Categorie.find(params[:category_id])
  end

  def transaction_params
    params.require(:transferce).permit(:name, :amount)
  end

  def total_in_catagory(_id)
    total = 0
    @transcation.each do |trans|
      total += trans.amount
    end
    total
  end
  helper_method :total_in_catagory
end
