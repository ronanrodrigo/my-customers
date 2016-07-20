import Foundation

class CreateCustomerOutputPresenterMock: CreateCustomerOutputPresenter {

    var showedCustomer = false

    func show() {
        showedCustomer = true
    }

}
