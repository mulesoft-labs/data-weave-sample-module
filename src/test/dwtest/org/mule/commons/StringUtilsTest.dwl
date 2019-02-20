%dw 2.0
import * from org::mule::commons::StringUtils
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test StringUtilsTest" describedBy [
  "Repeate the amount of time specified" in do {
    times("Test", 2) must equalTo("TestTest")
  },
  "When times is 0 or less it should return empty string" in do {
    times("Test", 0) must equalTo("")
  }
]