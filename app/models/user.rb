class User < ApplicationRecord
	has_secure_password
	has_many :messages

	validates :username,
		presence: true,
		uniqueness: true,
		length: { minimum: 3, maximum: 15 }
end
