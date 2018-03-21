class ApplicationMailer < ActionMailer::Base
  default from: 'topherscratch@gmail.com'
  layout 'mailer'

  def notify_of_usage(email)
    @email = email
    mail(to: 'chrisknight.mail@gmail.com', subject: "Login")
  end

  def send_classroom_invite(user_id, classroom_id)
    @user = User.find(user_id)
    @classroom = Classroom.find(classroom_id)
    @classroom_url =  Rails.application.routes.url_helpers.classroom_path(@classroom)
    mail(to: @user.email, subject: "Invited to #{@classroom.name}")
  end
end
