(function (global) {
  "use strict";

  let React;

  if (typeof module === "object" && module.exports) {
    React = require("react");
  } else {
    React = global.React;
  }

  class First extends React.Component {
    render () {
      return <span />
    }
  }

  if (typeof module === "object" && module.exports) {
    module.exports = First;
  } else {
    global.First = First;
  }
})(this);
