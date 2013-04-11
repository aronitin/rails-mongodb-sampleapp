class ExpenseType
  include Mongoid::Document

  has_many :expenses
end
