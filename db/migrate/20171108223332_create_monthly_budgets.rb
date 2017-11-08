class CreateMonthlyBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :monthly_budgets do |t|
      t.integer :budget_total
      
      t.timestamps
    end
  end
end
