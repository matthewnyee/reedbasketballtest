require 'rake'

task :reset_rsvp => :environment do
  if Date.today.wday == 7 #&& Time.now.strftime("%H%M").to_i.between?(1728, 1732)
    User.update_all('status' => 'NoResponse')
  end
end
