class UserMailer < ActionMailer::Base
  default from: "WeDoTechMatch@gmail.com"

   def welcome_email(email)
  	@email = email
    mail(to: @email, subject: 'Welcome to Tech Match!')
  end

end
