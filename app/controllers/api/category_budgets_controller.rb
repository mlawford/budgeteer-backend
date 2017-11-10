class Api::CategoryBudgetsController < ApplicationController

  def index
    @category_budgets = CategoryBudget.all
    render json: @category_budgets
  end


  def create

    @category_budget1 = CategoryBudget.create({category_name: category1_budget_params[:category_name], category_budget_total: category1_budget_params[:category_budget_total], monthly_budget_id: MonthlyBudget.last.id})
    @category_budget2 = CategoryBudget.create({category_name: category2_budget_params[:category_name], category_budget_total: category2_budget_params[:category_budget_total], monthly_budget_id: MonthlyBudget.last.id})
    @category_budget3 = CategoryBudget.create({category_name: category3_budget_params[:category_name], category_budget_total: category3_budget_params[:category_budget_total], monthly_budget_id: MonthlyBudget.last.id})

  end

  def show
    @category_budget = CategoryBudget.find(params[:id])
    render json: @category_budget
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

    def category1_budget_params
       params.require(:category1Key).permit(:category_name, :category_budget_total, :monthly_budget_id)
    end

    def category2_budget_params
       params.require(:category2Key).permit(:category_name, :category_budget_total, :monthly_budget_id)
    end

    def category3_budget_params
       params.require(:category3Key).permit(:category_name, :category_budget_total, :monthly_budget_id)
    end




end
