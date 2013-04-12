class ExpenseType
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_many :expenses

  # Validation for the name field
  validates :name, :presence => true, :uniqueness => true
end
