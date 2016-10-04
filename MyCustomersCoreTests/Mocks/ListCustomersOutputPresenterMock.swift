import Foundation

class ListCustomersOutputPresenterMock: ListCustomersOutputPresenter {

    var listedCustomers: [Customer]?

    func list(_ customers: [Customer]) {
        listedCustomers = customers
    }

}
