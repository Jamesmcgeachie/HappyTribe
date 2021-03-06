class UserMailer < ApplicationMailer
	default from: 'happytribeteam@gmail.com'

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome to HappyTribe')
	end

	def registered_email(user)
		@user = user
		mail(to: @user.email, subject: "You have joined #{@user.arrangements.last.event.name} in HappyTribe")
	end
end
