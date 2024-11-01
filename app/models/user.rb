class User < ApplicationRecord
  has_secure_password

  validates :user_email, presence: true, uniqueness: true,
    format: {
      with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
      message: :invalid
    }
  validates :user_name, presence: true, uniqueness: true,
    length: { in: 3..15 },
    format: {
      with: /\A[a-z-0-9-A-Z]+\z/,
      message: :invalid
    }
  validates :password, length: { minimum: 6 }

  before_save :downcase_attributes

  private

  def downcase_attributes
    self.user_name = user_name.downcase
    self.user_email = user_email.downcase
  end
end
