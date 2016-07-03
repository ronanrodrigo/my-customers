import Foundation
import MyCustomersCore

class CreateCustomerOutputPresenterApp: CreateCustomerOutputPresenter {

    var newCustomerViewController: NewCustomerViewController

    init(newCustomerViewController: NewCustomerViewController) {
        self.newCustomerViewController = newCustomerViewController
    }

    func show(customer: Customer) {
        if let customersAppRouter = customersAppRouter {
            customersAppRouter.backToList()
        }
    }

}
