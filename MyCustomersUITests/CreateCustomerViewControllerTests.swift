import XCTest

class CreateCustomerViewControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testShouldCreateAnCustomer() {
        let name = "Hommer Simpson"
        let email = "hommer@simpson.com"


        let app = XCUIApplication()
        app.navigationBars["Customers"].buttons["Add"].tap()

        let elementsQuery = app.scrollViews.otherElements
        elementsQuery.textFields["name"].tap()
        elementsQuery.textFields["name"].typeText(name)
        elementsQuery.textFields["email"].tap()
        elementsQuery.textFields["email"].typeText(email)
        app.navigationBars["New customer"].buttons["Done"].tap()

        XCUIApplication().tables.staticTexts[name].tap()
    }

}
