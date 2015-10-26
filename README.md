#Reed Open Gym

Basketball attendance website built using Ruby on Rails ([safe-garden-1108.herokuapp.com](https://safe-garden-1108.herokuapp.com/)).

###Features

* All users and RSVP statuses visible on home page to make attendance data public
* Displays date and day of week of next game
* Autofills user information on edit page (RSVP status/email/username) when applicable
* Automatically emails users before game as reminder
* Automatically resets RSVP statuses after games
* Site deployed using [Heroku](https://www.heroku.com/about)

###Notes

* Site kept simple to lower barrier of entry for users of all ages and technological fluencies
 * No user verification, logins, or passwords
* Automatic tasks (email/database resets) completed using [scheduler](https://devcenter.heroku.com/articles/scheduler), a Heroku add-on for scheduled jobs  similar to Cron


### Functions to be added
* [Flash messages](http://api.rubyonrails.org/classes/ActionDispatch/Flash.html) for successful submission of action (creating/deleting user, changing status/email, etc)
* Notify user on edit page if emails not delivering (most likely wrong email address)
* If weekly events > 1, allow users to unsubscribe from reminders for certain days
* Sort users on homepage by status
* SMS reminders
* Disallow blank or duplicate usernames
* Add optional toggle for arriving late/leaving early
* Email user when their username is deleted, in case of malicious deletion by other visitor
