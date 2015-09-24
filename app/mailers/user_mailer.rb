class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def test_email
    mail(to: 'matt@alumni.reed.edu', subject: 'Welcome to My Awesome Site')
  end
  
end
