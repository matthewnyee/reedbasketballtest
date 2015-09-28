class ResetrsvpJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    User.update_all('status' => 'NoResponse')
  end

end
