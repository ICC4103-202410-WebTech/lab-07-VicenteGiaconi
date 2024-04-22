class User < ApplicationRecord
    has_many :posts, class_name: 'Post'

    before_save :downcase_email

    validates :name, :email, :password, presence: { message: "must be provided by the user" }
    validates :email, uniqueness: { message: "already exists" }, format: { with: URI::MailTo::EMAIL_REGEXP ,message: "has the wrong format"}
    validates :password, length: { minimum: 6 , message: "is too short"}

    private
    def downcase_email
        self.email = email.downcase
    end
end