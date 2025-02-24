function someFunction():void {
  // ... some code ...
  if (someVariable != null && someVariable.hasOwnProperty('myMethod')) {
    trace(someVariable.myMethod());
  } else {
    trace('someVariable or myMethod is undefined');
  }
  // ... more code ...
}

//or use the safer option of null check
function someFunction():void {
  // ... some code ...
  trace(someVariable != null ? someVariable.myMethod() : 'someVariable is undefined');
  // ... more code ...
}

// Ensure myMethod is defined before calling it, even if someVariable is initialized as an Object
var someVariable:Object = {
  myMethod: function():String { return 'Hello World!'; }
};