(function (global) {
  "use strict";

  let React;

  if (typeof module === "object" && module.exports) {
    React = require("react");
  } else {
    React = global.React;
  }

  class <%= attributes[0].camelize %> extends React.Component {
    render () {
      return <div />
    }
  }

  if (typeof module === "object" && module.exports) {
    module.exports = <%= attributes[0].camelize %>;
  } else {
    global.<%= attributes[0].camelize %> = <%= attributes[0].camelize %>;
  }
})(this);
