class Author < ApplicationRecord
  validates :username, :password, :first_name, :password, presence: true
end
