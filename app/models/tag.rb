class Tag < ApplicationRecord
    has_many :post_tags, class_name: 'PostTag'
    has_many :posts, through: :post_tags, class_name: 'Post'
    has_many :users, through: :posts, class_name: 'User'

    validates :name, presence: { message: "must be provided by the user" }, uniqueness: { message: "already exists" }
end
