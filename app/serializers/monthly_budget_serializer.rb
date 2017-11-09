class MonthlyBudgetSerializer < ActiveModel::Serializer
  attributes :id, :budget_total
  belongs_to :user
end
