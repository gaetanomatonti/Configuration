import XCTest

import ConfigurationTests

var tests = [XCTestCaseEntry]()
tests += ConfigurationTests.allTests()
XCTMain(tests)
