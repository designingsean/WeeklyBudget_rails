class Expense < ActiveRecord::Base
  def self.monthly_sum
    statement_break = Date.new(Date.today.year, Date.today.month, 20)
    if Date.today <= statement_break
      start_date = statement_break + 1.day - 1.month
      end_date = statement_break
    else
      start_date = statement_break + 1.day
      end_date = statement_break + 1.month
    end
    self.where(:postDate => start_date..end_date).sum(:amount)
    # self.where("Month(postDate) = ?", Date.today.month).sum(:amount)
  end
  def self.weekly_sum
    self.where("WEEK(postDate, 1) = ?", Date.today.cweek).sum(:amount)
  end
  def self.monthly_items
    self.where("Month(postDate) = ?", Date.today.month).reverse
  end
end
