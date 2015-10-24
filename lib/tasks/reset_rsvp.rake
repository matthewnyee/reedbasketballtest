require 'rake'

task :reset_rsvp => :environment do
  if Date.today.wday == 6 && Time.now.strftime("%H%M").to_i.between(1300, 1400)
    User.update_all('status' => 'reset rake task')
  else
    User.update_all('status' => "didn't work")
  end
end
