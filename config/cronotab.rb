# cronotab.rb — Crono configuration file
#
# Here you can specify periodic jobs and schedule.
# You can use ActiveJob's jobs from `app/jobs/`
# You can use any class. The only requirement is that
# class should have a method `perform` without arguments.
#
# class TestJob
#   def perform
#     puts 'Test!'
#   end
# end
#
# Crono.perform(TestJob).every 2.days, at: '15:30'
#

class TestJob
  def perform
    User.update_all('status' => 'cronotab.rb from crono')
  end
end

# Crono.perform(TestJob).every 100.seconds
# Crono.perform(ResetrsvpJob).every 1.week, on: :sunday, at: {hour: 23, min: 55}
Crono.perform(ResetrsvpJob).every 1.week, on: :monday
Crono.perform(ResetrsvpJob).every 1.week, on: :monday, at {hour: 00, min: 05}
# Crono.perform(ResetrsvpJob).every 10.seconds
# Crono.perform(TestemailJob).every 10.seconds
# Crono.perform(ReminderEmailJob).every 1.week, on: :saturday, at: {hour: 04, min: 30}
# Crono.perform(ReminderEmailJob).every 1.week, on: :saturday
Crono.perform(ReminderEmailJob).every 1.week, on: :monday
Crono.perform(ReminderEmailJob).every 1.week, on: :monday, at: {hour: 00, min: 05}
# Crono.perform(ReminderEmailJob).every 1.week, on: :sunday
# Crono.perform(ReminderEmailJob).every 10.seconds
# Crono.perform(TestJob).every 1.minute
# Crono.perform(ResetrsvpJob).every 1.minute


#
# require 'rake'
# # Be sure to change AppName to your application name!
# Ballin::Application.load_tasks
#
# class Test
#   def perform
#     Rake::Task['reset_rsvp:reset_rsvp'].invoke
#   end
# end
#
# Crono.perform(Test).every 5.seconds
