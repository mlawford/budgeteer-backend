class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :category_budget_id
  belongs_to :category_budget

end
