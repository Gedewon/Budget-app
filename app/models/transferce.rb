class Transferce < ApplicationRecord
  has_many :categories
  belongs_to :user
  validates :name , presence: true
  validates :amount , presence: true
end
