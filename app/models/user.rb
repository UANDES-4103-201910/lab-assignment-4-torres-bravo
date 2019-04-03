class User < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 9..12 }
  validates :phone, length: { in: 8..12 }
  has_many :orders
end
