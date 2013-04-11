class Expense
  include Mongoid::Document

  belongs_to :user
  belongs_to :expense_type
end
