Tinytest.add("c2o tracker - Google Analytics tracker", (test) ->

  Tracker = new c2o.Tracker();
  Tracker.register('google_analytics', 'UA-123456');
  test.equal(Tracker.trackers[0] instanceof GoogleAnalyticsTracker);
});
