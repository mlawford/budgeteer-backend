class Api::TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render json: @transactions
  end


  def create
    # Hard coded category budget id tentatively
    @transaction = Transaction.create(name: transaction_params[:name], amount: transaction_params[:amount], category_budget_id: 1)
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(transaction_params)

  end

  def delete
    @transaction = Transaction.find(params[:id])
    @transaction.destroy()
  end


  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :category_budget_id)
  end
end
