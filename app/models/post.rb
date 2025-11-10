class Post < ApplicationRecord
  belongs_to :post_creator, class_name: "User"
  has_many :comments
end
