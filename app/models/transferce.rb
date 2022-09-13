class Transferce < ApplicationRecord
  has_many :catagories
  belongs_to :user
  validates :name , presence: true
  validates :amount , presence: true
  validates :categories , presence: true
end
