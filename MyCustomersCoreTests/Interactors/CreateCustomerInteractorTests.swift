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

        createCustomerInteractor.create(customer: customer)

        XCTAssertTrue(createCustomerOutputPresenter.showedCustomer)
        XCTAssertNotNil(customersRespository.customers.last!.name == customer.name)
    }

}
