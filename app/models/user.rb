class User < ActiveRecord::Base
	has_secure_password
	has_many :category
	has_many :post
end
