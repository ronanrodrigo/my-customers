import Foundation
import XCTest

class ListCustomersInteractorTests: XCTestCase {

    var listCustomersInteractor: ListCustomersInteractor!
    var customerRepository: CustomerRepository!
    var listCustomersOutputPresenter: ListCustomersOutputPresenterMock!

    override func setUp() {
        customerRepository = CustomerRepositoryInMemory()
        listCustomersOutputPresenter = ListCustomersOutputPresenterMock()
        listCustomersInteractor = ListCustomersInteractor(
            listCustomersOutputPresenter: listCustomersOutputPresenter,
            customerRepository: customerRepository
        )
    }

    func testShouldListCustomers() {
        let allCustomers = customerRepository.all()

        listCustomersInteractor.list()

        XCTAssertNotNil(listCustomersOutputPresenter.listedCustomers)
        XCTAssertEqual(allCustomers.count, listCustomersOutputPresenter.listedCustomers!.count)
    }

}
