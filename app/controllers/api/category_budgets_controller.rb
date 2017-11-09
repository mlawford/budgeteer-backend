class Api::CategoryBudgetsController < ApplicationController

  def index
    @category_budgets = CategoryBudget.all
    render json: @category_budgets
  end


  def create
    @category_budget = CategoryBudget.create(category_budget_params)
  end

  def update
    @category_budget = CategoryBudget.find(params[:id])
    @category_budget.update(category_budget_params)

  end

  def delete
    @category_budget = CategoryBudget.find(params[:id])
    @category_budget.destroy()
  end


  private

    def category_budget_params
       params.require(:category_budget).permit(:id,:category_name, :category_budget_total, :monthly_budget_id)
    end


end
