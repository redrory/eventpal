class UserMailer < ActionMailer::Base
  default from: "me@poutly.com"

  def confirm_email(user)
  	mail(:to => user.email, :subject => "Please confirm_email")
  end
end
