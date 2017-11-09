class Api::MonthlyBudgetsController < ApplicationController

  def index
    @monthly_budgets = MonthlyBudget.all
    render json: @monthly_budgets
  end


  def create
    @monthly_budget = MonthlyBudget.create(monthly_budget_params)
  end

  def update
    @monthly_budget = MonthlyBudget.find(params[:id])
    @monthly_budget.update(monthly_budget_params)

  end

  def delete
    @monthly_budget = MonthlyBudget.find(params[:id])
    @monthly_budget.destroy()
  end

  private

    def monthly_budget_params
       params.require(:monthly_budget).permit(:id,:budget_total,:user_id)
    end

end
