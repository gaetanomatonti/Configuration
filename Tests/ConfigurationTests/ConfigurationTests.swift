import XCTest
@testable import Configuration

final class ConfigurationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Configuration().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
