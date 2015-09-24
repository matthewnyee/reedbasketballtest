class TestemailJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    UserMailer.test_email.deliver_now

    
  end


end
