import XCTest

class ListCustomersViewControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testShouldTouchAtFirstItemOfTheList() {
        XCUIApplication().tables.staticTexts["Ronan Rodrigo Nunes"].tap()
    }

}
