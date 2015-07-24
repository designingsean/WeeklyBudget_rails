class Expense < ActiveRecord::Base
  def self.monthly_sum
    self.where("Month(postDate) = ?", Date.today.month).sum(:amount)
  end
  def self.weekly_sum
    self.where("WEEK(postDate, 1) = ?", Date.today.cweek).sum(:amount)
  end
end
