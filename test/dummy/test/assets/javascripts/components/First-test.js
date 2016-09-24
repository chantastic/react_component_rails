"use strict";

import assert from "assert";
import React, { addons } from "react/addons";
import First from "../../../../app/assets/javascripts/components/First.js.jsx";

let shallowRenderer = React.addons.TestUtils.createRenderer();

describe("First", () => {
  shallowRenderer.render(<First />);
  let result = shallowRenderer.getRenderOutput();

  it("renders an div tag as its root element", () => {
    assert.strictEqual(result.type, "span");
  });
});
