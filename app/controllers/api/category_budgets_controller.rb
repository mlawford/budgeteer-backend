class Api::CategoryBudgetsController < ApplicationController

  def index
    @category_budgets = CategoryBudget.all
    render json: @category_budgets
  end


  def create
    
    @category_budget1 = CategoryBudget.create(category_budget_params.category1Key)
    @category_budget2 = CategoryBudget.create(category_budget_params.category2Key)
    @category_budget3 = CategoryBudget.create(category_budget_params.category3Key)

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
       params.permit(:category1Key, :category2Key, :category3Key)
    end


end
