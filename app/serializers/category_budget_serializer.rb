class CategoryBudgetSerializer < ActiveModel::Serializer
  attributes :id, :category_name, :category_budget_total, :monthly_budget_id
  has_many :transactions
  belongs_to :monthly_budget
end
