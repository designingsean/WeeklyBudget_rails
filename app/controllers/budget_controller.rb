class BudgetController < ApplicationController
  def index
    @monthly_sum = MONTHLY_BUDGET - Expense.monthly_sum
    @weekly_sum = WEEKLY_BUDGET - Expense.weekly_sum
    @weekly_percentage = (@weekly_sum/WEEKLY_BUDGET)*100
    @expenses = Expense.all.reverse
    @new_expense = Expense.new
  end

  def create
    Expense.create(expense_params)
    redirect_to controller: "budget", action: "index"
  end

  private

  def expense_params
    params.require(:expense).permit(:amount, :postDate)
  end
end
