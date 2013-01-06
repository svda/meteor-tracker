###

Usage:
AppTracker = new Tracker();
AppTracker.register(GoogleAnalyticsTracker, 'UA-XXXXXX');

In your router or controllers:
AppTracker.track('Clicked link ' + slug);
###

class Tracker

  constructor: (@name) ->
    @_trackers = []

  register: (tracker, options) ->
    @_trackers.push new tracker(options)

  unregister: (callback) ->
    @_trackers.forEach (tracker) ->
      if tracker == callback
        return this.children.splice(i, 1)

  # Relates a tracker instance with a certain user. Used by Mixpanel.
  identify = () ->

  track: (event, parameters) ->
    @_trackers.forEach (tracker) ->
      tracker.track(event, parameters)

