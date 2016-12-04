class BudgetController < ApplicationController
  def index
    @monthly_sum = MONTHLY_BUDGET - Expense.monthly_sum
    @monthly_percentage = (@monthly_sum/MONTHLY_BUDGET)*100
    @monthly_expenses = Expense.monthly_items
    @new_expense = Expense.new
  end

  def create
    Expense.create(expense_params)
    redirect_to root_path
  end

  private

  def expense_params
    params.require(:expense).permit(:amount, :postDate)
  end
end
