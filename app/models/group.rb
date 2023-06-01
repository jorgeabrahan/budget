class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :dealings

  validates :name, presence: true, length: { maximum: 100 }
  validates :icon, presence: true, length: { maximum: 250 }

  def calculate_total
    dealings.sum(:amount)
  end
end
