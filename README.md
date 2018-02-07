## Blocmetrics: an analytics service to track events on websites.

Blocmetrics now allows users to create an account, verify their email, and add web apps to track. I am now working on building the API so developers can add their web apps to Blocmetrics and then track events on it.

This is the JavaScript snippet developers can put in their app to track events. In Rails, a good place to put it is app/assets/javascripts/application.js:

 `var blocmetrics = {};
  blocmetrics.report = function(eventName){
    var event = {event: { name: eventName }};
    var request = new XMLHttpRequest();
    request.open("POST", "https://blocmetrics-project.herokuapp.com/api/events", true);
    request.setRequestHeader('Content-Type', 'application/json');
    request.send(JSON.stringify(event));
  };`

 Made with my mentor at [Bloc](http://bloc.io).
