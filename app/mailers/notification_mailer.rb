class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster.com"

  def comment_added
  	mail(to: "lenha777@gmail.com",
  		subject: "A comment has been added to your place")
  end

end
