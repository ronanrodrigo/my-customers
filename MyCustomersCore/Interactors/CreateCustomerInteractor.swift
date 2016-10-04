import Foundation

public struct CreateCustomerInteractor {

    var customerRepository: CustomerRepository
    var createCustomerOutputPresenter: CreateCustomerOutputPresenter

    public init(customerRepository: CustomerRepository, createCustomerOutputPresenter: CreateCustomerOutputPresenter) {
        self.customerRepository = customerRepository
        self.createCustomerOutputPresenter = createCustomerOutputPresenter
    }

    public func create(customer: Customer) {
        customerRepository.create(customer: customer)
        createCustomerOutputPresenter.show()
    }

}
