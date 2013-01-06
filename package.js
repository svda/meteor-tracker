Package.describe({
  summary: "Tracker package: track your app's visitors behaviors in your favorite analytics platform"
});

Package.on_use(function (api) {
  api.use(['coffeescript'], ['client']);

  api.add_files(['trackers/google_analytics.coffee', 'trackers/mixpanel.js', 'tracker.coffee'], ['client']);
});

Package.on_test(function (api) {
  api.use(['tinytest', 'htmljs', 'test-helpers'], 'client');
  api.add_files(['tracker_tests.coffee'], 'client');
});