class Categorie < ApplicationRecord
  has_many :transferces
  belongs_to :user
  validates :name , presence:true
  validates :icon , presence:true
end
