import Foundation

class CreateCustomerOutputPresenterMock: CreateCustomerOutputPresenter {

    var showedCustomer: Customer?

    func show(customer: Customer) {
        showedCustomer = customer
    }

}
