class User < ApplicationRecord
  has_many :monthly_budgets
  has_many :category_budgets, through: :monthly_budgets
end
