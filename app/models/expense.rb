class Expense < ActiveRecord::Base
  statement_break = Date.new(Date.today.year, Date.today.month, 20)
  if Date.today <= statement_break
    start_date = statement_break + 1.day - 1.month
    end_date = statement_break
  else
    start_date = statement_break + 1.day
    end_date = statement_break + 1.month
  end

  scope :monthly, -> { where(:postDate => start_date..end_date) }

  def self.monthly_sum
    self.monthly.sum(:amount)
  end

  def self.monthly_items
    self.monthly.reverse
  end
end
