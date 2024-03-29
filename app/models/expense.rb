class Expense
  include Mongoid::Document

  field :description, type: String
  field :amount, type: Float
  field :status, type: String, default: EXPENSE_STATUS[0]
  field :date, type: Date
  field :attachment, type: String 

  mount_uploader :attachment, AttachmentUploader

  belongs_to :user
  belongs_to :expense_type

  validates :description, :expense_type_id, :status, :user_id, :date, :presence => true
  validates :amount, :numericality => {message: "is not valid"}

  scope :pending, where(:status => EXPENSE_STATUS[0])
end

