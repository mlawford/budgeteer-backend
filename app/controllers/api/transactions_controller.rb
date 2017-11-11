class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render json: @transactions
  end


  def create
    @transaction = Transaction.create(monthly_budget_params)
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(monthly_budget_params)

  end

  def delete
    @transaction = Transaction.find(params[:id])
    @transaction.destroy()
  end
end
