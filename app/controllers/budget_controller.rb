class BudgetController < ApplicationController
  def index
    @monthly_sum = MONTHLY_BUDGET - Expense.monthly_sum
    @weekly_sum = WEEKLY_BUDGET - Expense.weekly_sum
  end
end
