require 'rake'

task :reset_rsvp => :environment do
  User.update_all('status' => 'reset rake task')
end
