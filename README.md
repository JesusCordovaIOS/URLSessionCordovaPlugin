# URLSessionCordovaPlugin
Plugin that helps developers consume and parse from the JSONPlaceHolder API Post Endpoint.

**Technical Description:**

Plugin that helps developers consume and parse from the JSONPlaceHolder API Post Endpoint.

This plugin has the method called “getJSONPlaceHolderPostTitle”, which allows any hybrid developer to consume and parse the title of a post of the JSONPlaceHolder API(http://jsonplaceholder.typicode.com)

**Usage Example:**

```
window.onload = function() {
  MyCordovaPlugin.getJSONPlaceHolderPostTitle(‘http://jsonplaceholder.typicode.com/posts/1');
}
```
