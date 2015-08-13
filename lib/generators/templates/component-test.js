"use strict";

import React, { addons } from "react/addons";
import AppIcon from "../app/assets/javascripts/components/<%= attributes[0].camelize %>";

let shallowRenderer = React.addons.TestUtils.createRenderer();

describe("<%= attributes[0].camelize %>", () => {
  shallowRenderer.render(<<%= attributes[0].camelize %> />);
  let result = shallowRenderer.getRenderOutput();

  it("renders an div tag as its root element", () => {
    assert.strictEqual(result.type, "div");
  });
});
