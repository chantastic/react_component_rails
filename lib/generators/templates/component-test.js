"use strict";

import assert from "assert";
import React, { addons } from "react/addons";
import <%= attributes[0].camelize %> from "../../../../app/assets/javascripts/components/<%= attributes[0].camelize %>.js.jsx";

let shallowRenderer = React.addons.TestUtils.createRenderer();

describe("<%= attributes[0].camelize %>", () => {
  shallowRenderer.render(<<%= attributes[0].camelize %> />);
  let result = shallowRenderer.getRenderOutput();

  it("renders an div tag as its root element", () => {
    assert.strictEqual(result.type, "div");
  });
});
