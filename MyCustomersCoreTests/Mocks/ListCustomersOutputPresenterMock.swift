import Foundation

class ListCustomersOutputPresenterMock: ListCustomersOutputPresenter {

    var listedCustomers: [Customer]?

    func list(customers: [Customer]) {
        listedCustomers = customers
    }

}
