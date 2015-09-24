class ReminderMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def reminder_email(user)
    @user = user
    mail(to: @user.email_address, subject: 'reminder email')
    mail(to: 'matt@alumni.reed.edu', subject: 'Reminder email!!!')
  end

end
