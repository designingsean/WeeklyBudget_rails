class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :postDate
      t.decimal :amount, :precision => 6, :scale => 2
    end
  end
end
