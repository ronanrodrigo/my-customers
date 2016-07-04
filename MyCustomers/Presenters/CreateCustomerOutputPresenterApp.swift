import Foundation
import MyCustomersCore

class CreateCustomerOutputPresenterApp: CreateCustomerOutputPresenter {

    func show(customer: Customer) {
        if let customersAppRouter = customersAppRouter {
            customersAppRouter.backToList()
        }
    }

}
