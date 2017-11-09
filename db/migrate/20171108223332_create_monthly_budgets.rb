class CreateMonthlyBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :monthly_budgets do |t|
      t.integer :budget_total
      t.integer :user_id
      t.timestamps
    end
  end
end
