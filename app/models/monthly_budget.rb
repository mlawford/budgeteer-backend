class MonthlyBudget < ApplicationRecord
  belongs_to :user
  has_many :category_budgets
  has_many :transactions, through: :category_budgets
end
