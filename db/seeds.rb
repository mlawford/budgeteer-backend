# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Ryan", password: "girth")
User.create(username: "Matt", password: "asdf")
MonthlyBudget.create(budget_total: 1000, user_id: 1)
MonthlyBudget.create(budget_total: 1250, user_id: 2)
CategoryBudget.create(category_name: "Food", category_budget_total: 500, monthly_budget_id: 1)
CategoryBudget.create(category_name: "Beer", category_budget_total: 200, monthly_budget_id: 1)
CategoryBudget.create(category_name: "Alcohol", category_budget_total: 250, monthly_budget_id: 2)
