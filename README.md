Meteor Tracker
===================================

Track your app's visitors behaviors in your favorite analytics platform.
Supports Google Analytics and Mixpanel out of the box, but can be easily extended to any platform because of the factory pattern.

### Usage

In your app:
```js
var AppTracker = new Tracker();
AppTracker.register(GoogleAnalyticsTracker, {account: 'UA-XXXXXX'});
AppTracker.register(MixpanelTracker, {account: '123456'});
```

In your router or controller:
```js
AppTracker.track('You clicked ' + slug);
```