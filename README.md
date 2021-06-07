# WingClip

In the olden days, Foursquare provided each user with a "Check-in Feed" URL, which would allow them to subscribe to their check-ins using their calendar application of choice. This feature was a great way to be able to look back on any day from your calendar and see where you were and remember what you were doing. Eventually, support for the feature died out. IFTTT has provided some level of alternative, but it only works with check-ins that are created after you set up the integration. WingClip is an alternative that can sync your entire check-in history—past, present, and future—to your Google calendar.

## Setup

WingClip requires several dependencies to be installed before the application itself can be set up and run:

* Ruby 3.0.1
* PostgreSQL
* Redis
* foreman

You should install these however you're comfortable. On MacOS using homebrew, for example, you could run the following:

```sh
# Install Ruby 3.0.1
brew install rbenv
rbenv init -
rbenv install 3.0.1

# Install the required databases and utilities we'll use to run WingClip
brew install postgresql redis foreman

# Run WingClip's setup utility
bin/setup

# Start the application alongside sidekiq, for asynchronous job processing
foreman start
```

Finally, to view and use WingClip, visit http://localhost:3000/. To run the test suite, you can run `bin/rspec`.

## How it works

To use WingClip, you must first sign in with Foursquare, and then sign in with Google. Once you've signed in, we create a calendar for you called "Swarm Check-Ins" (using their signature Orange hue, of course) and immediately begin syncing your Check-In history. WingClip uses two mechanisms to keep your check-ins synced: webhooks and, as a fallback, polling.

When you check into a place on Swarm, they send us an event that we can quickly process to represent it as a Google calendar event. Unfortunately, Foursquare's Events API is notoriously unreliable. It has frequent availability incidents that go unreported and can last for days, or even weeks, at a time. Because of this, we must also rely on polling to ensure that we don't miss users' check-ins. Once per day, we fire off a background job for each user that looks for any check-ins that occurred after whatever the most recent check-in for that user we have stored.
