import UIKit
import MyCustomersCore

class NewCustomerViewController: UIViewController {

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    func createCustomer() {
        let createCustomerOutputPresenterApp: CreateCustomerOutputPresenterApp =
            CreateCustomerOutputPresenterApp(newCustomerViewController: self)
        let createCustomerInputPresenterApp: CreateCustomerInputPresenter =
            CreateCustomerInputPresenterApp(newCustomerViewController: self)
        createCustomerInputPresenterApp.createCustomer(createCustomerOutputPresenterApp)
    }

}
