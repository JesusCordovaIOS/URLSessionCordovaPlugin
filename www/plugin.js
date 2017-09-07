
var exec = require('cordova/exec');

var PLUGIN_NAME = 'MyCordovaPlugin';

var MyCordovaPlugin = {
  getJSONPlaceHolderPostTitle: function(endpoint, cb) {
    exec(cb, null, PLUGIN_NAME, 'getJSONPlaceHolderPostTitle', [endpoint]);
  }
};

module.exports = MyCordovaPlugin;