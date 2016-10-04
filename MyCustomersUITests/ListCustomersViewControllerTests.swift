import XCTest
import MyCustomersCore

class ListCustomersViewControllerTests: XCTestCase {

    var customersRepository: CustomerRepository!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        customersRepository = CustomerRepositoryStore()
        XCUIApplication().launch()
    }

    func testShouldTouchAtFirstItemOfTheList() {
        let customerName = customersRepository.all().first!.name
        XCUIApplication().tables.staticTexts[customerName!].tap()
    }

    func testShouldTouchAtAddCustomer() {
        XCUIApplication().navigationBars["Customers"].buttons["Add"].tap()
    }

    func testShouldTouchAtAddCustomerAndBackToList() {
        let app = XCUIApplication()
        app.navigationBars["Customers"].buttons["Add"].tap()
        app.navigationBars["New customer"].buttons["Customers"].tap()
    }

}
