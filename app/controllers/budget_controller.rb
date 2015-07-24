class BudgetController < ApplicationController
  def index
    @monthly_sum = MONTHLY_BUDGET - Expense.monthly_sum
    @weekly_sum = WEEKLY_BUDGET - Expense.weekly_sum
    @weekly_percentage = (@weekly_sum/WEEKLY_BUDGET)*100
  end
end
