class ReminderEmailJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    #UserMailer.test_email.deliver_now

    @users = User.all
    @users.each do |user|
      #if user.exempt? != false ##keep an exempt list
       if user.email_address.include? '@'
         ReminderMailer.reminder_email(user).deliver_now
       else
         next
      #   no email address or invalid email address
       end
    end
  end
end
