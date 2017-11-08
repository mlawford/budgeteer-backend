class CategoryBudget < ApplicationRecord
  belongs_to :monthly_budget
  belongs_to :user, through: :monthly_budgets 
end
