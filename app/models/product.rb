class Product < ActiveRecord::Base
  belongs_to :category
  has_many :comments

validates :name, presence: true
validates :price, presence: true
validates :description, presence: true, length: { in: 7..240 }
end
