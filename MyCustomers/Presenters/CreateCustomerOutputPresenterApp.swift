import Foundation
import MyCustomersCore

class CreateCustomerOutputPresenterApp: CreateCustomerOutputPresenter {

    func show() {
        if let customersAppRouter = customersAppRouter {
            customersAppRouter.backToList()
        }
    }

}
