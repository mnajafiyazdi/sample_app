class User < ActiveRecord::Base

	# change the email to lower-case
	before_save { email.downcase! }

	validates :name, presence: true, length: { maximum: 50 }

	VALID_EMAIL_REGX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i 
	validates :email, presence: true, 
					  format: { with: VALID_EMAIL_REGX },
					  uniqueness: { case_sensitive: false }

	# password presence and its confirmation are automatically added by
	has_secure_password
	validates :password, length: { minimum: 6 }
end
