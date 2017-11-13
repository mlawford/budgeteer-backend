class MonthlyBudgetSerializer < ActiveModel::Serializer
  attributes :id, :budget_total
  has_many :category_budgets
  has_many :transactions, through: :category_budgets
  belongs_to :user
end
