#Reed Open Gym

Basketball attendance [website](https://safe-garden-1108.herokuapp.com/) built using Ruby on Rails

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
 * Potential for users to modify/delete other users
* Automatic tasks (email/database resets) completed using [crono](https://github.com/plashchynski/crono), a background job daemon
