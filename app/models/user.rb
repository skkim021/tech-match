class User < ActiveRecord::Base

# Constant that validates for email @ and .com
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

	before_save {self.email = email.downcase}
	validates :name, presence: true

	# Validates for email being filled
	validates :email, presence: true,
			format: { with: VALID_EMAIL_REGEX },
			uniqueness: { case_sensitive: false }

	# Validates password

	has_secure_password
	validates :password_digest, presence: true 
	validates :password_digest, length: {minimum: 6}


	# before_create :create_remember_token

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end
# # ////// Facebook ////
	def self.from_omniauth(auth)
  	where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.info = auth
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.password_digest = "facebook" 
    user.email = auth.info.email
    user.save!
  end
end
# ///// End Facebook ////
	private 
		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end
end
 
