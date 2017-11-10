class CategoryBudgetsSerializer < ActiveModel::Serializer
  attributes :id, :category_name, :category_budget_total, :monthly_budget_id
end
