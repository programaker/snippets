var Url = function(urlString) {
  var _params = {};

  urlString.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(match, key, value) {
      _params[key] = value;
  });

  this.param = function(paramName) {
    return _params[paramName];
  };
};