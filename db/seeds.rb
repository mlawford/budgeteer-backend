# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Ryan", password: "girth")
MonthlyBudget.create(budget_total: 1000, user_id: 1)
CategoryBudget.create(category_name: "Food", category_budget_total: 500, monthly_budget_id: 1)
CategoryBudget.create(category_name: "Alcohol", category_budget_total: 250, monthly_budget_id: 1)
CategoryBudget.create(category_name: "Bills", category_budget_total: 250, monthly_budget_id: 1)
# Transaction.create(name: "Hot Dog", amount: 5, category_budget_id: 1)
# Transaction.create(name: "PBR", amount: 15, category_budget_id: 2)
# Transaction.create(name: "Lollipop", amount: 2, category_budget_id: 1)
# Transaction.create(name: "Mead", amount: 10, category_budget_id: 2)
