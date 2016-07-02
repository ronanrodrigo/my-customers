import Foundation

public struct ListCustomersInteractor {

    var listCustomersOutputPresenter: ListCustomersOutputPresenter
    var customerRepository: CustomerRepository

    public init(listCustomersOutputPresenter: ListCustomersOutputPresenter, customerRepository: CustomerRepository) {
        self.listCustomersOutputPresenter = listCustomersOutputPresenter
        self.customerRepository = customerRepository
    }

    public func list() {
        let customers = customerRepository.all()
        listCustomersOutputPresenter.list(customers)
    }

}
