class User < ActiveRecord::Base

# Constant that validates for email @ and .com
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

	before_save {self.email = email.downcase}
	# Validates for email being filled
	validates :email, presence: :true,
			format: { with: VALID_EMAIL_REGEX },
			uniqueness: { case_sensitive: false}
	validates :password, presence: true
	validates :name, presence: true
	validates :photo, presence: true
	validates :location, presence: true

	has_secure_password
	validates :password, length: {minimum: 6}
	before_create :create_remember_token

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private 
		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end

  validates :name, presence: true
end
 
