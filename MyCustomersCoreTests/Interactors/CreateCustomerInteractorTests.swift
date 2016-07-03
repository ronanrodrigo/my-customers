import Foundation
import XCTest

class CreateCustomerInteractorTests: XCTestCase {

    var customersRespository: CustomerRepositoryInMemory!
    var createCustomerOutputPresenter: CreateCustomerOutputPresenterMock!
    var createCustomerInteractor: CreateCustomerInteractor!

    override func setUp() {
        customersRespository = CustomerRepositoryInMemory()
        createCustomerOutputPresenter = CreateCustomerOutputPresenterMock()
        createCustomerInteractor = CreateCustomerInteractor(
            customerRepository: customersRespository,
            createCustomerOutputPresenter: createCustomerOutputPresenter
        )
    }

    func testShouldCreateCustomer() {
        var customer = CustomerEntity()
        customer.name = "Customer Name"

        createCustomerInteractor.create(customer)

        XCTAssertNotNil(createCustomerOutputPresenter.showedCustomer)
        XCTAssertEqual(customer.name, createCustomerOutputPresenter.showedCustomer!.name)
        XCTAssertNotNil(customersRespository.customers.last!.name == customer.name)
    }

}
