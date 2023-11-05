class User < ApplicationRecord
  has_secure_password 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, on: [:create]
  validates :city, presence: true, on: [:create]
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 4 }, confirmation: true, on: [:create]

  default_scope { select(*User.attribute_names.reject { |attr| attr == 'password_digest' }) }
end
